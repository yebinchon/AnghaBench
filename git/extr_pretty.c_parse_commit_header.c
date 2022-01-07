
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int off; int len; } ;
struct TYPE_3__ {int off; int len; } ;
struct format_commit_context {char* message; int message_off; int commit_header_parsed; TYPE_2__ committer; TYPE_1__ author; } ;


 scalar_t__ skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static void parse_commit_header(struct format_commit_context *context)
{
 const char *msg = context->message;
 int i;

 for (i = 0; msg[i]; i++) {
  const char *name;
  int eol;
  for (eol = i; msg[eol] && msg[eol] != '\n'; eol++)
   ;

  if (i == eol) {
   break;
  } else if (skip_prefix(msg + i, "author ", &name)) {
   context->author.off = name - msg;
   context->author.len = msg + eol - name;
  } else if (skip_prefix(msg + i, "committer ", &name)) {
   context->committer.off = name - msg;
   context->committer.len = msg + eol - name;
  }
  i = eol;
 }
 context->message_off = i;
 context->commit_header_parsed = 1;
}
