
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xml_ctx {char* name; struct remote_ls_ctx* userData; int userFunc; int * cdata; scalar_t__ len; } ;
struct strbuf {int len; int buf; } ;
struct slot_results {scalar_t__ curl_result; } ;
struct remote_ls_ctx {int flags; char* path; void (* userFunc ) (struct remote_ls_ctx*) ;void* userData; scalar_t__ dentry_flags; int * dentry_name; } ;
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
 int PROPFIND_ALL_REQUEST ;
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
 struct strbuf* curl_slist_append (struct strbuf*,char*) ;
 int curl_slist_free_all (struct strbuf*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int fwrite_buffer ;
 struct active_request_slot* get_active_slot () ;
 int handle_remote_ls_ctx ;
 struct strbuf* http_copy_default_headers () ;
 TYPE_1__* repo ;
 int run_active_slot (struct active_request_slot*) ;
 scalar_t__ start_active_slot (struct active_request_slot*) ;
 int stderr ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 char* xcalloc (int,int) ;
 int xml_cdata ;
 int xml_end_tag ;
 int xml_start_tag ;
 char* xstrdup (char const*) ;
 char* xstrfmt (char*,int ,char const*) ;

__attribute__((used)) static void remote_ls(const char *path, int flags,
        void (*userFunc)(struct remote_ls_ctx *ls),
        void *userData)
{
 char *url = xstrfmt("%s%s", repo->url, path);
 struct active_request_slot *slot;
 struct slot_results results;
 struct strbuf in_buffer = STRBUF_INIT;
 struct buffer out_buffer = { STRBUF_INIT, 0 };
 struct curl_slist *dav_headers = http_copy_default_headers();
 struct xml_ctx ctx;
 struct remote_ls_ctx ls;

 ls.flags = flags;
 ls.path = xstrdup(path);
 ls.dentry_name = ((void*)0);
 ls.dentry_flags = 0;
 ls.userData = userData;
 ls.userFunc = userFunc;

 strbuf_addstr(&out_buffer.buf, PROPFIND_ALL_REQUEST);

 dav_headers = curl_slist_append(dav_headers, "Depth: 1");
 dav_headers = curl_slist_append(dav_headers, "Content-Type: text/xml");

 slot = get_active_slot();
 slot->results = &results;
 curl_setup_http(slot->curl, url, DAV_PROPFIND,
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
   ctx.userFunc = handle_remote_ls_ctx;
   ctx.userData = &ls;
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
   }
   XML_ParserFree(parser);
  }
 } else {
  fprintf(stderr, "Unable to start PROPFIND request\n");
 }

 free(ls.path);
 free(url);
 strbuf_release(&out_buffer.buf);
 strbuf_release(&in_buffer);
 curl_slist_free_all(dav_headers);
}
