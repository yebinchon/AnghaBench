
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct line_buffer {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int buffer_copy_bytes (struct line_buffer*,int ) ;
 int buffer_read_binary (struct line_buffer*,struct strbuf*,int ) ;
 int buffer_skip_bytes (struct line_buffer*,int ) ;
 int die (char*,char const*) ;
 int fwrite (int ,int,int ,int ) ;
 scalar_t__ starts_with (char const*,char*) ;
 int stdout ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_release (struct strbuf*) ;
 int strtouint32 (char const*) ;

__attribute__((used)) static void handle_command(const char *command, const char *arg, struct line_buffer *buf)
{
 if (starts_with(command, "binary ")) {
  struct strbuf sb = STRBUF_INIT;
  strbuf_addch(&sb, '>');
  buffer_read_binary(buf, &sb, strtouint32(arg));
  fwrite(sb.buf, 1, sb.len, stdout);
  strbuf_release(&sb);
 } else if (starts_with(command, "copy ")) {
  buffer_copy_bytes(buf, strtouint32(arg));
 } else if (starts_with(command, "skip ")) {
  buffer_skip_bytes(buf, strtouint32(arg));
 } else {
  die("unrecognized command: %s", command);
 }
}
