
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_commit_context {char* message; int message_off; int subject_off; int body_off; int commit_message_parsed; } ;


 char* format_subject (int *,char const*,int *) ;
 char* skip_blank_lines (char const*) ;

__attribute__((used)) static void parse_commit_message(struct format_commit_context *c)
{
 const char *msg = c->message + c->message_off;
 const char *start = c->message;

 msg = skip_blank_lines(msg);
 c->subject_off = msg - start;

 msg = format_subject(((void*)0), msg, ((void*)0));
 msg = skip_blank_lines(msg);
 c->body_off = msg - start;

 c->commit_message_parsed = 1;
}
