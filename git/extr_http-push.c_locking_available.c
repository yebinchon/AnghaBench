
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xml_ctx {char* name; int* userData; int userFunc; int * cdata; scalar_t__ len; } ;
struct strbuf {int len; int buf; } ;
struct slot_results {scalar_t__ curl_result; } ;
struct curl_slist {int len; int buf; } ;
struct buffer {struct strbuf buf; int member_1; struct strbuf member_0; } ;
struct active_request_slot {int curl; struct slot_results* results; } ;
typedef enum XML_Status { ____Placeholder_XML_Status } XML_Status ;
typedef int XML_Parser ;
struct TYPE_2__ {int url; } ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_FILE ;
 int CURLOPT_HTTPHEADER ;
 int DAV_PROPFIND ;
 int PROPFIND_SUPPORTEDLOCK_REQUEST ;
 struct strbuf STRBUF_INIT ;
 char* XML_ErrorString (int ) ;
 int XML_GetErrorCode (int ) ;
 int XML_Parse (int ,int ,int ,int) ;
 int XML_ParserCreate (int *) ;
 int XML_ParserFree (int ) ;
 int XML_STATUS_OK ;
 int XML_SetElementHandler (int ,int ,int ) ;
 int XML_SetUserData (int ,struct xml_ctx*) ;
 int curl_easy_setopt (int ,int ,struct strbuf*) ;
 int curl_setup_http (int ,int ,int ,struct buffer*,int ) ;
 struct strbuf* curl_slist_append (struct strbuf*,char*) ;
 int curl_slist_free_all (struct strbuf*) ;
 int error (char*,int ,...) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int fwrite_buffer ;
 struct active_request_slot* get_active_slot () ;
 int handle_lockprop_ctx ;
 struct strbuf* http_copy_default_headers () ;
 TYPE_1__* repo ;
 int run_active_slot (struct active_request_slot*) ;
 scalar_t__ start_active_slot (struct active_request_slot*) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,int ,char*) ;
 int strbuf_release (struct strbuf*) ;
 char* xcalloc (int,int) ;
 int xml_end_tag ;
 char* xml_entities (int ) ;
 int xml_start_tag ;

__attribute__((used)) static int locking_available(void)
{
 struct active_request_slot *slot;
 struct slot_results results;
 struct strbuf in_buffer = STRBUF_INIT;
 struct buffer out_buffer = { STRBUF_INIT, 0 };
 struct curl_slist *dav_headers = http_copy_default_headers();
 struct xml_ctx ctx;
 int lock_flags = 0;
 char *escaped;

 escaped = xml_entities(repo->url);
 strbuf_addf(&out_buffer.buf, PROPFIND_SUPPORTEDLOCK_REQUEST, escaped);
 free(escaped);

 dav_headers = curl_slist_append(dav_headers, "Depth: 0");
 dav_headers = curl_slist_append(dav_headers, "Content-Type: text/xml");

 slot = get_active_slot();
 slot->results = &results;
 curl_setup_http(slot->curl, repo->url, DAV_PROPFIND,
   &out_buffer, fwrite_buffer);
 curl_easy_setopt(slot->curl, CURLOPT_HTTPHEADER, dav_headers);
 curl_easy_setopt(slot->curl, CURLOPT_FILE, &in_buffer);

 if (start_active_slot(slot)) {
  run_active_slot(slot);
  if (results.curl_result == CURLE_OK) {
   XML_Parser parser = XML_ParserCreate(((void*)0));
   enum XML_Status result;
   ctx.name = xcalloc(10, 1);
   ctx.len = 0;
   ctx.cdata = ((void*)0);
   ctx.userFunc = handle_lockprop_ctx;
   ctx.userData = &lock_flags;
   XML_SetUserData(parser, &ctx);
   XML_SetElementHandler(parser, xml_start_tag,
           xml_end_tag);
   result = XML_Parse(parser, in_buffer.buf,
        in_buffer.len, 1);
   free(ctx.name);

   if (result != XML_STATUS_OK) {
    fprintf(stderr, "XML error: %s\n",
     XML_ErrorString(
      XML_GetErrorCode(parser)));
    lock_flags = 0;
   }
   XML_ParserFree(parser);
   if (!lock_flags)
    error("no DAV locking support on %s",
          repo->url);

  } else {
   error("Cannot access URL %s, return code %d",
         repo->url, results.curl_result);
   lock_flags = 0;
  }
 } else {
  error("Unable to start PROPFIND request on %s", repo->url);
 }

 strbuf_release(&out_buffer.buf);
 strbuf_release(&in_buffer);
 curl_slist_free_all(dav_headers);

 return lock_flags;
}
