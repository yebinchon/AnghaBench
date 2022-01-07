
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot_results {scalar_t__ curl_result; int http_code; } ;
struct remote_lock {int refreshing; int start_time; int url; } ;
struct curl_slist {int dummy; } ;
struct active_request_slot {int curl; struct slot_results* results; } ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HTTPHEADER ;
 int DAV_HEADER_IF ;
 int DAV_HEADER_TIMEOUT ;
 int DAV_LOCK ;
 int curl_easy_setopt (int ,int ,struct curl_slist*) ;
 int curl_setup_http_get (int ,int ,int ) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int fprintf (int ,char*,int ) ;
 struct active_request_slot* get_active_slot () ;
 struct curl_slist* get_dav_token_headers (struct remote_lock*,int) ;
 int run_active_slot (struct active_request_slot*) ;
 scalar_t__ start_active_slot (struct active_request_slot*) ;
 int stderr ;
 int time (int *) ;

__attribute__((used)) static int refresh_lock(struct remote_lock *lock)
{
 struct active_request_slot *slot;
 struct slot_results results;
 struct curl_slist *dav_headers;
 int rc = 0;

 lock->refreshing = 1;

 dav_headers = get_dav_token_headers(lock, DAV_HEADER_IF | DAV_HEADER_TIMEOUT);

 slot = get_active_slot();
 slot->results = &results;
 curl_setup_http_get(slot->curl, lock->url, DAV_LOCK);
 curl_easy_setopt(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

 if (start_active_slot(slot)) {
  run_active_slot(slot);
  if (results.curl_result != CURLE_OK) {
   fprintf(stderr, "LOCK HTTP error %ld\n",
    results.http_code);
  } else {
   lock->start_time = time(((void*)0));
   rc = 1;
  }
 }

 lock->refreshing = 0;
 curl_slist_free_all(dav_headers);

 return rc;
}
