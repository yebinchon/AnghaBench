
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ curl_empty_auth ;
 int empty_auth_useless ;
 int http_auth_methods ;
 scalar_t__ http_auth_methods_restricted ;

__attribute__((used)) static int curl_empty_auth_enabled(void)
{
 if (curl_empty_auth >= 0)
  return curl_empty_auth;
 return 0;
}
