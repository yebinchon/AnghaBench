
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* on_connect ) (TYPE_2__*,char const*,int *,int *,int *,int ,int *,int *,int *,int *) ;} ;
struct TYPE_7__ {TYPE_1__ _cb; } ;
typedef TYPE_2__ h2o_httpclient_t ;


 int assert (int ) ;
 int close_client (TYPE_2__*) ;
 int stub1 (TYPE_2__*,char const*,int *,int *,int *,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void on_connect_error(h2o_httpclient_t *client, const char *errstr)
{
    assert(errstr != ((void*)0));
    client->_cb.on_connect(client, errstr, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    close_client(client);
}
