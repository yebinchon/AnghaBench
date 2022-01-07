
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* auth_context; } ;
typedef TYPE_1__ http_server ;
struct TYPE_5__ {scalar_t__ (* is_complete ) (TYPE_2__*) ;} ;


 scalar_t__ stub1 (TYPE_2__*) ;

__attribute__((used)) static bool auth_context_complete(http_server *server)
{

 if (!server->auth_context->is_complete)
  return 1;

 if (server->auth_context->is_complete(server->auth_context))
  return 1;

 return 0;
}
