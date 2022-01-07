
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int http_simple_test_impl (void*,int ,int ,char*) ;

__attribute__((used)) static void http_simple_nonconformant_test(void *arg)
{ http_simple_test_impl(arg, 0, 0, "/test nonconformant"); }
