
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {char* name; int type; scalar_t__ raw; } ;


 int abort () ;
 int message_eq (int ,int,struct message const*) ;
 int num_messages ;
 int parse_connect (char*,size_t) ;
 int parser_init (int ) ;
 int printf (char*,char*) ;
 size_t strlen (scalar_t__) ;

void
test_message_connect (const struct message *msg)
{
  char *buf = (char*) msg->raw;
  size_t buflen = strlen(msg->raw);

  parser_init(msg->type);

  parse_connect(buf, buflen);

  if (num_messages != 1) {
    printf("\n*** num_messages != 1 after testing '%s' ***\n\n", msg->name);
    abort();
  }

  if(!message_eq(0, 1, msg)) abort();
}
