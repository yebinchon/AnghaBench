
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; int tv_usec; } ;
struct active_request_slot {int* finished; int curl; int curl_result; scalar_t__ in_use; } ;
typedef int fd_set ;


 int FD_ZERO (int *) ;
 int curl_easy_perform (int ) ;
 int curl_multi_fdset (int ,int *,int *,int *,int*) ;
 int curl_multi_timeout (int ,long*) ;
 int curlm ;
 int finish_active_slot (struct active_request_slot*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int step_active_slots () ;

void run_active_slot(struct active_request_slot *slot)
{
 while (slot->in_use) {
  slot->curl_result = curl_easy_perform(slot->curl);
  finish_active_slot(slot);
 }

}
