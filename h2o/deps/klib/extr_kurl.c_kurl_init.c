
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURL_GLOBAL_DEFAULT ;
 int curl_global_init (int ) ;

int kurl_init(void)
{
 return curl_global_init(CURL_GLOBAL_DEFAULT);
}
