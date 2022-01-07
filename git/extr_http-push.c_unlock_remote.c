
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slot_results {scalar_t__ curl_result; int http_code; } ;
struct remote_lock {struct remote_lock* token; struct remote_lock* url; struct remote_lock* owner; struct remote_lock* next; } ;
struct curl_slist {int dummy; } ;
struct active_request_slot {int curl; struct slot_results* results; } ;
struct TYPE_2__ {struct remote_lock* locks; } ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HTTPHEADER ;
 int DAV_HEADER_LOCK ;
 int DAV_UNLOCK ;
 int curl_easy_setopt (int ,int ,struct curl_slist*) ;
 int curl_setup_http_get (int ,struct remote_lock*,int ) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int fprintf (int ,char*,...) ;
 int free (struct remote_lock*) ;
 struct active_request_slot* get_active_slot () ;
 struct curl_slist* get_dav_token_headers (struct remote_lock*,int ) ;
 TYPE_1__* repo ;
 int run_active_slot (struct active_request_slot*) ;
 scalar_t__ start_active_slot (struct active_request_slot*) ;
 int stderr ;

__attribute__((used)) static int unlock_remote(struct remote_lock *lock)
{
 struct active_request_slot *slot;
 struct slot_results results;
 struct remote_lock *prev = repo->locks;
 struct curl_slist *dav_headers;
 int rc = 0;

 dav_headers = get_dav_token_headers(lock, DAV_HEADER_LOCK);

 slot = get_active_slot();
 slot->results = &results;
 curl_setup_http_get(slot->curl, lock->url, DAV_UNLOCK);
 curl_easy_setopt(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

 if (start_active_slot(slot)) {
  run_active_slot(slot);
  if (results.curl_result == CURLE_OK)
   rc = 1;
  else
   fprintf(stderr, "UNLOCK HTTP error %ld\n",
    results.http_code);
 } else {
  fprintf(stderr, "Unable to start UNLOCK request\n");
 }

 curl_slist_free_all(dav_headers);

 if (repo->locks == lock) {
  repo->locks = lock->next;
 } else {
  while (prev && prev->next != lock)
   prev = prev->next;
  if (prev)
   prev->next = lock->next;
 }

 free(lock->owner);
 free(lock->url);
 free(lock->token);
 free(lock);

 return rc;
}
