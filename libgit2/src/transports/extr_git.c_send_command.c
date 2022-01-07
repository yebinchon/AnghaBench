
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sent_command; int io; int url; int cmd; } ;
typedef TYPE_1__ git_proto_stream ;
struct TYPE_8__ {int size; int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int gen_proto (TYPE_2__*,int ,int ) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_stream__write_full (int ,int ,int ,int ) ;

__attribute__((used)) static int send_command(git_proto_stream *s)
{
 git_buf request = GIT_BUF_INIT;
 int error;

 if ((error = gen_proto(&request, s->cmd, s->url)) < 0)
  goto cleanup;

 if ((error = git_stream__write_full(s->io, request.ptr, request.size, 0)) < 0)
  goto cleanup;

 s->sent_command = 1;

cleanup:
 git_buf_dispose(&request);
 return error;
}
