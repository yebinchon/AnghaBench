
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HTTP_GET ;
 int assert (int) ;
 int http_method_str (int) ;
 scalar_t__ strcmp (char*,int ) ;

void
test_method_str (void)
{
  assert(0 == strcmp("GET", http_method_str(HTTP_GET)));
  assert(0 == strcmp("<unknown>", http_method_str(1337)));
}
