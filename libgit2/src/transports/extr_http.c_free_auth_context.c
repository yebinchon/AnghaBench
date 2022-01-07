
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* auth_context; } ;
typedef TYPE_1__ http_server ;
struct TYPE_5__ {int (* free ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void free_auth_context(http_server *server)
{
 if (!server->auth_context)
  return;

 if (server->auth_context->free)
  server->auth_context->free(server->auth_context);

 server->auth_context = ((void*)0);
}
