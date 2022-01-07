
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot_results {scalar_t__ curl_result; int http_code; } ;
struct remote_lock {int url; } ;
struct curl_slist {int dummy; } ;
struct buffer {int buf; int member_1; int member_0; } ;
struct active_request_slot {int curl; struct slot_results* results; } ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HTTPHEADER ;
 int DAV_HEADER_IF ;
 int DAV_PUT ;
 int PROCESS_FILES ;
 int RECURSIVE ;
 int STRBUF_INIT ;
 int aborted ;
 int add_remote_info_ref ;
 int curl_easy_setopt (int ,int ,struct curl_slist*) ;
 int curl_setup_http (int ,int ,int ,struct buffer*,int ) ;
 int fprintf (int ,char*,scalar_t__,int ) ;
 int fwrite_null ;
 struct active_request_slot* get_active_slot () ;
 struct curl_slist* get_dav_token_headers (struct remote_lock*,int ) ;
 int remote_ls (char*,int,int ,int *) ;
 int run_active_slot (struct active_request_slot*) ;
 scalar_t__ start_active_slot (struct active_request_slot*) ;
 int stderr ;
 int strbuf_release (int *) ;

__attribute__((used)) static void update_remote_info_refs(struct remote_lock *lock)
{
 struct buffer buffer = { STRBUF_INIT, 0 };
 struct active_request_slot *slot;
 struct slot_results results;
 struct curl_slist *dav_headers;

 remote_ls("refs/", (PROCESS_FILES | RECURSIVE),
    add_remote_info_ref, &buffer.buf);
 if (!aborted) {
  dav_headers = get_dav_token_headers(lock, DAV_HEADER_IF);

  slot = get_active_slot();
  slot->results = &results;
  curl_setup_http(slot->curl, lock->url, DAV_PUT,
    &buffer, fwrite_null);
  curl_easy_setopt(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

  if (start_active_slot(slot)) {
   run_active_slot(slot);
   if (results.curl_result != CURLE_OK) {
    fprintf(stderr,
     "PUT error: curl result=%d, HTTP code=%ld\n",
     results.curl_result, results.http_code);
   }
  }
 }
 strbuf_release(&buffer.buf);
}
