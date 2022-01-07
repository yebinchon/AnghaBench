
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_httpclient_t ;


 int close_client (int *) ;

__attribute__((used)) static void do_cancel(h2o_httpclient_t *_client)
{
    h2o_httpclient_t *client = (void *)_client;
    close_client(client);
}
