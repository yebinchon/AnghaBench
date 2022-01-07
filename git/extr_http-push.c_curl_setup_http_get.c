
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 int CURLOPT_CUSTOMREQUEST ;
 int CURLOPT_HTTPGET ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEFUNCTION ;
 int curl_easy_setopt (int *,int ,...) ;
 char const* fwrite_null ;

__attribute__((used)) static void curl_setup_http_get(CURL *curl, const char *url,
  const char *custom_req)
{
 curl_easy_setopt(curl, CURLOPT_HTTPGET, 1);
 curl_easy_setopt(curl, CURLOPT_URL, url);
 curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, custom_req);
 curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, fwrite_null);
}
