
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t offset; } ;
typedef TYPE_1__ gitno_buffer ;
typedef int git_smart_subtransport_stream ;
struct TYPE_7__ {int io; int sent_command; } ;
typedef TYPE_2__ git_proto_stream ;


 int gitno_buffer_setup_fromstream (int ,TYPE_1__*,char*,size_t) ;
 int gitno_recv (TYPE_1__*) ;
 int send_command (TYPE_2__*) ;

__attribute__((used)) static int git_proto_stream_read(
 git_smart_subtransport_stream *stream,
 char *buffer,
 size_t buf_size,
 size_t *bytes_read)
{
 int error;
 git_proto_stream *s = (git_proto_stream *)stream;
 gitno_buffer buf;

 *bytes_read = 0;

 if (!s->sent_command && (error = send_command(s)) < 0)
  return error;

 gitno_buffer_setup_fromstream(s->io, &buf, buffer, buf_size);

 if ((error = gitno_recv(&buf)) < 0)
  return error;

 *bytes_read = buf.offset;

 return 0;
}
