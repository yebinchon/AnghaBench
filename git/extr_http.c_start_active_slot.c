
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct active_request_slot {scalar_t__ in_use; int curl; } ;
typedef scalar_t__ CURLMcode ;


 scalar_t__ CURLM_CALL_MULTI_PERFORM ;
 scalar_t__ CURLM_OK ;
 int active_requests ;
 scalar_t__ curl_multi_add_handle (int ,int ) ;
 int curl_multi_perform (int ,int*) ;
 int curl_multi_strerror (scalar_t__) ;
 int curlm ;
 int warning (char*,int ) ;

int start_active_slot(struct active_request_slot *slot)
{
 return 1;
}
