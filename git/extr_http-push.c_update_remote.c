
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot_results {scalar_t__ curl_result; int http_code; } ;
struct remote_lock {int url; } ;
struct object_id {int dummy; } ;
struct curl_slist {int dummy; } ;
struct buffer {int buf; int member_1; int member_0; } ;
struct active_request_slot {int curl; struct slot_results* results; } ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HTTPHEADER ;
 int DAV_HEADER_IF ;
 int DAV_PUT ;
 int STRBUF_INIT ;
 int curl_easy_setopt (int ,int ,struct curl_slist*) ;
 int curl_setup_http (int ,int ,int ,struct buffer*,int ) ;
 int fprintf (int ,char*,...) ;
 int fwrite_null ;
 struct active_request_slot* get_active_slot () ;
 struct curl_slist* get_dav_token_headers (struct remote_lock*,int ) ;
 int oid_to_hex (struct object_id const*) ;
 int run_active_slot (struct active_request_slot*) ;
 scalar_t__ start_active_slot (struct active_request_slot*) ;
 int stderr ;
 int strbuf_addf (int *,char*,int ) ;
 int strbuf_release (int *) ;

__attribute__((used)) static int update_remote(const struct object_id *oid, struct remote_lock *lock)
{
 struct active_request_slot *slot;
 struct slot_results results;
 struct buffer out_buffer = { STRBUF_INIT, 0 };
 struct curl_slist *dav_headers;

 dav_headers = get_dav_token_headers(lock, DAV_HEADER_IF);

 strbuf_addf(&out_buffer.buf, "%s\n", oid_to_hex(oid));

 slot = get_active_slot();
 slot->results = &results;
 curl_setup_http(slot->curl, lock->url, DAV_PUT,
   &out_buffer, fwrite_null);
 curl_easy_setopt(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

 if (start_active_slot(slot)) {
  run_active_slot(slot);
  strbuf_release(&out_buffer.buf);
  if (results.curl_result != CURLE_OK) {
   fprintf(stderr,
    "PUT error: curl result=%d, HTTP code=%ld\n",
    results.curl_result, results.http_code);

   return 0;
  }
 } else {
  strbuf_release(&out_buffer.buf);
  fprintf(stderr, "Unable to start PUT request\n");
  return 0;
 }

 return 1;
}
