
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ len; } ;
struct slot_results {int http_code; int curl_result; } ;
struct active_request_slot {int dummy; } ;


 int CURLE_OK ;
 int HTTP_OK ;
 int HTTP_REAUTH ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__* curl_errorstr ;
 int error (int ,int ) ;
 int run_one_slot (struct active_request_slot*,struct slot_results*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int) ;
 int strbuf_addstr (struct strbuf*,scalar_t__*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int run_slot(struct active_request_slot *slot,
      struct slot_results *results)
{
 int err;
 struct slot_results results_buf;

 if (!results)
  results = &results_buf;

 err = run_one_slot(slot, results);

 if (err != HTTP_OK && err != HTTP_REAUTH) {
  struct strbuf msg = STRBUF_INIT;
  if (results->http_code && results->http_code != 200)
   strbuf_addf(&msg, "HTTP %ld", results->http_code);
  if (results->curl_result != CURLE_OK) {
   if (msg.len)
    strbuf_addch(&msg, ' ');
   strbuf_addf(&msg, "curl %d", results->curl_result);
   if (curl_errorstr[0]) {
    strbuf_addch(&msg, ' ');
    strbuf_addstr(&msg, curl_errorstr);
   }
  }
  error(_("RPC failed; %s"), msg.buf);
  strbuf_release(&msg);
 }

 return err;
}
