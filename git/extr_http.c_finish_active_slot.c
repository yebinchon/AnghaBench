
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct active_request_slot {int* finished; int callback_data; int (* callback_func ) (int ) ;TYPE_1__* results; int curl; scalar_t__ http_code; int curl_result; } ;
struct TYPE_2__ {scalar_t__ http_connectcode; scalar_t__ auth_avail; scalar_t__ http_code; int curl_result; } ;


 int CURLINFO_HTTPAUTH_AVAIL ;
 int CURLINFO_HTTP_CODE ;
 int CURLINFO_HTTP_CONNECTCODE ;
 int closedown_active_slot (struct active_request_slot*) ;
 int curl_easy_getinfo (int ,int ,scalar_t__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void finish_active_slot(struct active_request_slot *slot)
{
 closedown_active_slot(slot);
 curl_easy_getinfo(slot->curl, CURLINFO_HTTP_CODE, &slot->http_code);

 if (slot->finished != ((void*)0))
  (*slot->finished) = 1;


 if (slot->results != ((void*)0)) {
  slot->results->curl_result = slot->curl_result;
  slot->results->http_code = slot->http_code;




  slot->results->auth_avail = 0;


  curl_easy_getinfo(slot->curl, CURLINFO_HTTP_CONNECTCODE,
   &slot->results->http_connectcode);
 }


 if (slot->callback_func != ((void*)0))
  slot->callback_func(slot->callback_data);
}
