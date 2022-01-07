
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* auth_context; int auth_challenges; } ;
typedef TYPE_1__ http_server ;
struct TYPE_5__ {int (* set_challenge ) (TYPE_2__*,char const*) ;} ;


 int GIT_ERROR_NET ;
 int git_error_set (int ,char*) ;
 char* git_vector_get (int *,int ) ;
 int git_vector_length (int *) ;
 int stub1 (TYPE_2__*,char const*) ;

__attribute__((used)) static int set_authentication_challenge(http_server *server)
{
 const char *challenge;

 if (git_vector_length(&server->auth_challenges) > 1) {
  git_error_set(GIT_ERROR_NET, "received multiple authentication challenges");
  return -1;
 }

 challenge = git_vector_get(&server->auth_challenges, 0);

 if (server->auth_context->set_challenge)
  return server->auth_context->set_challenge(server->auth_context, challenge);
 else
  return 0;
}
