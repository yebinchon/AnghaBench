
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_smart_subtransport_stream ;
struct TYPE_3__ {int io; int sent_command; } ;
typedef TYPE_1__ git_proto_stream ;


 int git_stream__write_full (int ,char const*,size_t,int ) ;
 int send_command (TYPE_1__*) ;

__attribute__((used)) static int git_proto_stream_write(
 git_smart_subtransport_stream *stream,
 const char *buffer,
 size_t len)
{
 git_proto_stream *s = (git_proto_stream *)stream;
 int error;

 if (!s->sent_command && (error = send_command(s)) < 0)
  return error;

 return git_stream__write_full(s->io, buffer, len, 0);
}
