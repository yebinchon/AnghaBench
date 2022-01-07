
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int cred; TYPE_4__* auth_context; } ;
typedef TYPE_1__ http_server ;
struct TYPE_11__ {int ptr; } ;
typedef TYPE_2__ git_buf ;
struct TYPE_12__ {int (* next_token ) (TYPE_2__*,TYPE_4__*,int ) ;} ;


 TYPE_2__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_printf (TYPE_2__*,char*,char const*,int ) ;
 int stub1 (TYPE_2__*,TYPE_4__*,int ) ;

__attribute__((used)) static int apply_credentials(
 git_buf *buf,
 http_server *server,
 const char *header_name)
{
 git_buf token = GIT_BUF_INIT;
 int error = 0;

 if (!server->auth_context)
  goto done;

 if ((error = server->auth_context->next_token(&token, server->auth_context, server->cred)) < 0)
  goto done;

 error = git_buf_printf(buf, "%s: %s\r\n", header_name, token.ptr);

done:
 git_buf_dispose(&token);
 return error;
}
