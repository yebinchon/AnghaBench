
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timeout_header ;
struct xml_ctx {char* name; struct remote_lock* userData; int userFunc; int * cdata; scalar_t__ len; } ;
struct strbuf {int len; int buf; } ;
struct slot_results {scalar_t__ curl_result; int http_code; } ;
struct remote_lock {int timeout; char* token; char* owner; char* url; struct remote_lock* next; int start_time; } ;
struct curl_slist {int len; int buf; } ;
struct buffer {struct strbuf buf; int member_1; struct strbuf member_0; } ;
struct active_request_slot {int curl; struct slot_results* results; } ;
typedef enum XML_Status { ____Placeholder_XML_Status } XML_Status ;
typedef int XML_Parser ;
struct TYPE_2__ {struct remote_lock* locks; int url; } ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_FILE ;
 int CURLOPT_HTTPHEADER ;
 int DAV_LOCK ;
 int DAV_MKCOL ;
 int FREE_AND_NULL (struct remote_lock*) ;
 int LOCK_REQUEST ;
 struct strbuf STRBUF_INIT ;
 char* XML_ErrorString (int ) ;
 int XML_GetErrorCode (int ) ;
 int XML_Parse (int ,int ,int ,int) ;
 int XML_ParserCreate (int *) ;
 int XML_ParserFree (int ) ;
 int XML_STATUS_OK ;
 int XML_SetCharacterDataHandler (int ,int ) ;
 int XML_SetElementHandler (int ,int ,int ) ;
 int XML_SetUserData (int ,struct xml_ctx*) ;
 int curl_easy_setopt (int ,int ,struct strbuf*) ;
 int curl_setup_http (int ,char*,int ,struct buffer*,int ) ;
 int curl_setup_http_get (int ,char*,int ) ;
 struct strbuf* curl_slist_append (struct strbuf*,char*) ;
 int curl_slist_free_all (struct strbuf*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int fwrite_buffer ;
 struct active_request_slot* get_active_slot () ;
 int handle_new_lock_ctx ;
 struct strbuf* http_copy_default_headers () ;
 int ident_default_email () ;
 TYPE_1__* repo ;
 int run_active_slot (struct active_request_slot*) ;
 scalar_t__ start_active_slot (struct active_request_slot*) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,int ,char*) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char*,char) ;
 int strlen (int ) ;
 int time (int *) ;
 void* xcalloc (int,int) ;
 int xml_cdata ;
 int xml_end_tag ;
 char* xml_entities (int ) ;
 int xml_start_tag ;
 int xsnprintf (char*,int,char*,long) ;
 char* xstrfmt (char*,int ,char const*) ;

__attribute__((used)) static struct remote_lock *lock_remote(const char *path, long timeout)
{
 struct active_request_slot *slot;
 struct slot_results results;
 struct buffer out_buffer = { STRBUF_INIT, 0 };
 struct strbuf in_buffer = STRBUF_INIT;
 char *url;
 char *ep;
 char timeout_header[25];
 struct remote_lock *lock = ((void*)0);
 struct curl_slist *dav_headers = http_copy_default_headers();
 struct xml_ctx ctx;
 char *escaped;

 url = xstrfmt("%s%s", repo->url, path);


 ep = strchr(url + strlen(repo->url) + 1, '/');
 while (ep) {
  char saved_character = ep[1];
  ep[1] = '\0';
  slot = get_active_slot();
  slot->results = &results;
  curl_setup_http_get(slot->curl, url, DAV_MKCOL);
  if (start_active_slot(slot)) {
   run_active_slot(slot);
   if (results.curl_result != CURLE_OK &&
       results.http_code != 405) {
    fprintf(stderr,
     "Unable to create branch path %s\n",
     url);
    free(url);
    return ((void*)0);
   }
  } else {
   fprintf(stderr, "Unable to start MKCOL request\n");
   free(url);
   return ((void*)0);
  }
  ep[1] = saved_character;
  ep = strchr(ep + 1, '/');
 }

 escaped = xml_entities(ident_default_email());
 strbuf_addf(&out_buffer.buf, LOCK_REQUEST, escaped);
 free(escaped);

 xsnprintf(timeout_header, sizeof(timeout_header), "Timeout: Second-%ld", timeout);
 dav_headers = curl_slist_append(dav_headers, timeout_header);
 dav_headers = curl_slist_append(dav_headers, "Content-Type: text/xml");

 slot = get_active_slot();
 slot->results = &results;
 curl_setup_http(slot->curl, url, DAV_LOCK, &out_buffer, fwrite_buffer);
 curl_easy_setopt(slot->curl, CURLOPT_HTTPHEADER, dav_headers);
 curl_easy_setopt(slot->curl, CURLOPT_FILE, &in_buffer);

 lock = xcalloc(1, sizeof(*lock));
 lock->timeout = -1;

 if (start_active_slot(slot)) {
  run_active_slot(slot);
  if (results.curl_result == CURLE_OK) {
   XML_Parser parser = XML_ParserCreate(((void*)0));
   enum XML_Status result;
   ctx.name = xcalloc(10, 1);
   ctx.len = 0;
   ctx.cdata = ((void*)0);
   ctx.userFunc = handle_new_lock_ctx;
   ctx.userData = lock;
   XML_SetUserData(parser, &ctx);
   XML_SetElementHandler(parser, xml_start_tag,
           xml_end_tag);
   XML_SetCharacterDataHandler(parser, xml_cdata);
   result = XML_Parse(parser, in_buffer.buf,
        in_buffer.len, 1);
   free(ctx.name);
   if (result != XML_STATUS_OK) {
    fprintf(stderr, "XML error: %s\n",
     XML_ErrorString(
      XML_GetErrorCode(parser)));
    lock->timeout = -1;
   }
   XML_ParserFree(parser);
  } else {
   fprintf(stderr,
    "error: curl result=%d, HTTP code=%ld\n",
    results.curl_result, results.http_code);
  }
 } else {
  fprintf(stderr, "Unable to start LOCK request\n");
 }

 curl_slist_free_all(dav_headers);
 strbuf_release(&out_buffer.buf);
 strbuf_release(&in_buffer);

 if (lock->token == ((void*)0) || lock->timeout <= 0) {
  free(lock->token);
  free(lock->owner);
  free(url);
  FREE_AND_NULL(lock);
 } else {
  lock->url = url;
  lock->start_time = time(((void*)0));
  lock->next = repo->locks;
  repo->locks = lock;
 }

 return lock;
}
