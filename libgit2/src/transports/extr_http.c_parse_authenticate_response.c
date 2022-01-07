
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ auth_context; int auth_challenges; scalar_t__ authenticated; } ;
typedef TYPE_1__ http_server ;


 scalar_t__ auth_context_complete (TYPE_1__*) ;
 int free_auth_context (TYPE_1__*) ;
 scalar_t__ git_vector_length (int *) ;
 int set_authentication_challenge (TYPE_1__*) ;
 int set_authentication_types (TYPE_1__*) ;

__attribute__((used)) static int parse_authenticate_response(http_server *server)
{






 if (server->auth_context && auth_context_complete(server)) {
  free_auth_context(server);

  server->authenticated = 0;
 }





 if (git_vector_length(&server->auth_challenges) == 0)
  return 0;
 else if (server->auth_context)
  return set_authentication_challenge(server);
 else
  return set_authentication_types(server);
}
