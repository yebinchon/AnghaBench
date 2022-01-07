
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int http_basic_test_impl (void*,int ,char*) ;

__attribute__((used)) static void http_basic_trailing_space_test(void *arg)
{ http_basic_test_impl(arg, 0, "GET /test HTTP/1.1 "); }
