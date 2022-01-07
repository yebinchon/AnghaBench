
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {char* name; int * raw; int type; } ;


 size_t MIN (size_t,size_t) ;
 int abort () ;
 int message_eq (int ,int ,struct message const*) ;
 int num_messages ;
 size_t parse_count_body (int *,size_t) ;
 int parser_init (int ) ;
 int print_error (int *,size_t) ;
 int printf (char*,char*) ;
 size_t strlen (int *) ;

void
test_message_count_body (const struct message *message)
{
  parser_init(message->type);

  size_t read;
  size_t l = strlen(message->raw);
  size_t i, toread;
  size_t chunk = 4024;

  for (i = 0; i < l; i+= chunk) {
    toread = MIN(l-i, chunk);
    read = parse_count_body(message->raw + i, toread);
    if (read != toread) {
      print_error(message->raw, read);
      abort();
    }
  }


  read = parse_count_body(((void*)0), 0);
  if (read != 0) {
    print_error(message->raw, read);
    abort();
  }

  if (num_messages != 1) {
    printf("\n*** num_messages != 1 after testing '%s' ***\n\n", message->name);
    abort();
  }

  if(!message_eq(0, 0, message)) abort();
}
