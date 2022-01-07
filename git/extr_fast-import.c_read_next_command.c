
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct recent_command {struct recent_command* next; struct recent_command* prev; int buf; } ;
struct TYPE_3__ {char* buf; } ;


 int EOF ;
 struct recent_command cmd_hist ;
 struct recent_command* cmd_tail ;
 TYPE_1__ command_buf ;
 int free (int ) ;
 int parse_argv () ;
 struct recent_command* rc_free ;
 int seen_data_command ;
 int starts_with (char*,char*) ;
 int stdin ;
 int strbuf_getline_lf (TYPE_1__*,int ) ;
 scalar_t__ unread_command_buf ;
 int xstrdup (char*) ;

__attribute__((used)) static int read_next_command(void)
{
 static int stdin_eof = 0;

 if (stdin_eof) {
  unread_command_buf = 0;
  return EOF;
 }

 for (;;) {
  if (unread_command_buf) {
   unread_command_buf = 0;
  } else {
   struct recent_command *rc;

   stdin_eof = strbuf_getline_lf(&command_buf, stdin);
   if (stdin_eof)
    return EOF;

   if (!seen_data_command
    && !starts_with(command_buf.buf, "feature ")
    && !starts_with(command_buf.buf, "option ")) {
    parse_argv();
   }

   rc = rc_free;
   if (rc)
    rc_free = rc->next;
   else {
    rc = cmd_hist.next;
    cmd_hist.next = rc->next;
    cmd_hist.next->prev = &cmd_hist;
    free(rc->buf);
   }

   rc->buf = xstrdup(command_buf.buf);
   rc->prev = cmd_tail;
   rc->next = cmd_hist.prev;
   rc->prev->next = rc;
   cmd_tail = rc;
  }
  if (command_buf.buf[0] == '#')
   continue;
  return 0;
 }
}
