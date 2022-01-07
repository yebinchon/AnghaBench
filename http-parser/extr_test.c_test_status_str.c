
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HTTP_STATUS_NOT_FOUND ;
 int HTTP_STATUS_OK ;
 int assert (int) ;
 int http_status_str (int) ;
 scalar_t__ strcmp (char*,int ) ;

void
test_status_str (void)
{
  assert(0 == strcmp("OK", http_status_str(HTTP_STATUS_OK)));
  assert(0 == strcmp("Not Found", http_status_str(HTTP_STATUS_NOT_FOUND)));
  assert(0 == strcmp("<unknown>", http_status_str(1337)));
}
