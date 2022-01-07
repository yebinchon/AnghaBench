
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct active_request_slot {int * curl; } ;


 int closedown_active_slot (struct active_request_slot*) ;
 int curl_easy_cleanup (int *) ;
 scalar_t__ curl_session_count ;
 int fill_active_slots () ;
 scalar_t__ min_curl_sessions ;
 int xmulti_remove_handle (struct active_request_slot*) ;

__attribute__((used)) static void release_active_slot(struct active_request_slot *slot)
{
 closedown_active_slot(slot);
 if (slot->curl) {
  xmulti_remove_handle(slot);
  if (curl_session_count > min_curl_sessions) {
   curl_easy_cleanup(slot->curl);
   slot->curl = ((void*)0);
   curl_session_count--;
  }
 }



}
