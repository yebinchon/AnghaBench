
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVHTTP_REQ_DELETE ;
 int http_genmethod_test (void*,int ,char*,char*) ;

__attribute__((used)) static void
http_delete_test(void *arg)
{
 http_genmethod_test(arg, EVHTTP_REQ_DELETE, "DELETE", "/deleteit");
}
