
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_HTTP_RETURNED_ERROR ;
 scalar_t__ CURLE_OK ;
 int xsnprintf (char*,size_t,char*,long) ;

void normalize_curl_result(CURLcode *result, long http_code,
      char *errorstr, size_t errorlen)
{
 if (*result == CURLE_OK && http_code >= 300) {
  *result = CURLE_HTTP_RETURNED_ERROR;






  xsnprintf(errorstr, errorlen,
     "The requested URL returned error: %ld",
     http_code);
 }
}
