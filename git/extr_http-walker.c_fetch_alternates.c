
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walker_data {int got_alternates; } ;
struct walker {scalar_t__ get_verbosely; struct walker_data* data; } ;
struct strbuf {struct strbuf* buf; } ;
struct alternates_request {char const* base; int http_specific; struct active_request_slot* slot; struct strbuf* buffer; struct strbuf* url; struct walker* walker; } ;
struct active_request_slot {int curl; struct alternates_request* callback_data; int callback_func; } ;


 int CURLOPT_FILE ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEFUNCTION ;
 struct strbuf STRBUF_INIT ;
 int curl_easy_setopt (int ,int ,struct strbuf*) ;
 int fprintf (int ,char*,char const*) ;
 struct strbuf* fwrite_buffer ;
 struct active_request_slot* get_active_slot () ;
 int process_alternates_response ;
 int run_active_slot (struct active_request_slot*) ;
 scalar_t__ start_active_slot (struct active_request_slot*) ;
 int stderr ;
 int step_active_slots () ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fetch_alternates(struct walker *walker, const char *base)
{
 struct strbuf buffer = STRBUF_INIT;
 struct strbuf url = STRBUF_INIT;
 struct active_request_slot *slot;
 struct alternates_request alt_req;
 struct walker_data *cdata = walker->data;
 if (cdata->got_alternates == 1)
  return;


 cdata->got_alternates = 0;

 if (walker->get_verbosely)
  fprintf(stderr, "Getting alternates list for %s\n", base);

 strbuf_addf(&url, "%s/objects/info/http-alternates", base);





 slot = get_active_slot();
 slot->callback_func = process_alternates_response;
 alt_req.walker = walker;
 slot->callback_data = &alt_req;

 curl_easy_setopt(slot->curl, CURLOPT_FILE, &buffer);
 curl_easy_setopt(slot->curl, CURLOPT_WRITEFUNCTION, fwrite_buffer);
 curl_easy_setopt(slot->curl, CURLOPT_URL, url.buf);

 alt_req.base = base;
 alt_req.url = &url;
 alt_req.buffer = &buffer;
 alt_req.http_specific = 1;
 alt_req.slot = slot;

 if (start_active_slot(slot))
  run_active_slot(slot);
 else
  cdata->got_alternates = -1;

 strbuf_release(&buffer);
 strbuf_release(&url);
}
