
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct http_object_request {TYPE_1__* slot; int http_code; int curl_result; } ;
struct TYPE_2__ {int http_code; int curl_result; } ;



void process_http_object_request(struct http_object_request *freq)
{
 if (freq->slot == ((void*)0))
  return;
 freq->curl_result = freq->slot->curl_result;
 freq->http_code = freq->slot->http_code;
 freq->slot = ((void*)0);
}
