
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 int CURLOPT_DEBUGDATA ;
 int CURLOPT_DEBUGFUNCTION ;
 int CURLOPT_VERBOSE ;
 int curl_easy_setopt (int *,int ,long) ;
 int * curl_trace ;
 int trace_curl ;
 int trace_want (int *) ;

void setup_curl_trace(CURL *handle)
{
 if (!trace_want(&trace_curl))
  return;
 curl_easy_setopt(handle, CURLOPT_VERBOSE, 1L);
 curl_easy_setopt(handle, CURLOPT_DEBUGFUNCTION, curl_trace);
 curl_easy_setopt(handle, CURLOPT_DEBUGDATA, ((void*)0));
}
