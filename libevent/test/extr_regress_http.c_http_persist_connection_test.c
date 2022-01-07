
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNSPEC ;
 int http_connection_test_ (void*,int,char*,int *,int ,int ,int ) ;

__attribute__((used)) static void
http_persist_connection_test(void *arg)
{
 http_connection_test_(arg, 1, "127.0.0.1", ((void*)0), 0, AF_UNSPEC, 0);
}
