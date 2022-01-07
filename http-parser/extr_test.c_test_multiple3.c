
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct message {char* raw; int type; } ;
struct TYPE_2__ {scalar_t__ upgrade; } ;


 int abort () ;
 int count_parsed_messages (int,struct message const*,struct message const*,struct message const*) ;
 int fprintf (int ,char*,int) ;
 int message_eq (int,int ,struct message const*) ;
 int num_messages ;
 size_t parse (char*,size_t) ;
 TYPE_1__ parser ;
 int parser_init (int ) ;
 int print_error (char*,size_t) ;
 int stderr ;
 int strcat (char*,char*) ;
 size_t strlen (char*) ;
 int upgrade_message_fix (char*,size_t,int,struct message const*,struct message const*,struct message const*) ;

void
test_multiple3 (const struct message *r1, const struct message *r2, const struct message *r3)
{
  int message_count = count_parsed_messages(3, r1, r2, r3);

  char total[ strlen(r1->raw)
            + strlen(r2->raw)
            + strlen(r3->raw)
            + 1
            ];
  total[0] = '\0';

  strcat(total, r1->raw);
  strcat(total, r2->raw);
  strcat(total, r3->raw);

  parser_init(r1->type);

  size_t read;

  read = parse(total, strlen(total));

  if (parser.upgrade) {
    upgrade_message_fix(total, read, 3, r1, r2, r3);
    goto test;
  }

  if (read != strlen(total)) {
    print_error(total, read);
    abort();
  }

  read = parse(((void*)0), 0);

  if (read != 0) {
    print_error(total, read);
    abort();
  }

test:

  if (message_count != num_messages) {
    fprintf(stderr, "\n\n*** Parser didn't see 3 messages only %d *** \n", num_messages);
    abort();
  }

  if (!message_eq(0, 0, r1)) abort();
  if (message_count > 1 && !message_eq(1, 0, r2)) abort();
  if (message_count > 2 && !message_eq(2, 0, r3)) abort();
}
