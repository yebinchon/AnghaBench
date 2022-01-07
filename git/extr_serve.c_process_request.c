
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protocol_capability {int (* command ) (int ,struct argv_array*,struct packet_reader*) ;} ;
struct packet_reader {int options; int line; } ;
struct argv_array {int argc; } ;
typedef enum request_state { ____Placeholder_request_state } request_state ;


 struct argv_array ARGV_ARRAY_INIT ;
 int BUG (char*) ;
 int PACKET_READ_CHOMP_NEWLINE ;

 int PACKET_READ_DIE_ON_ERR_PACKET ;


 int PACKET_READ_GENTLE_ON_EOF ;

 int PROCESS_REQUEST_DONE ;
 int PROCESS_REQUEST_KEYS ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,int ) ;
 int die (char*,...) ;
 int is_command (int ,struct protocol_capability**) ;
 int is_valid_capability (int ) ;
 int packet_reader_init (struct packet_reader*,int ,int *,int ,int) ;
 int packet_reader_peek (struct packet_reader*) ;
 int packet_reader_read (struct packet_reader*) ;
 int stub1 (int ,struct argv_array*,struct packet_reader*) ;
 int the_repository ;

__attribute__((used)) static int process_request(void)
{
 enum request_state state = PROCESS_REQUEST_KEYS;
 struct packet_reader reader;
 struct argv_array keys = ARGV_ARRAY_INIT;
 struct protocol_capability *command = ((void*)0);

 packet_reader_init(&reader, 0, ((void*)0), 0,
      PACKET_READ_CHOMP_NEWLINE |
      PACKET_READ_GENTLE_ON_EOF |
      PACKET_READ_DIE_ON_ERR_PACKET);





 if (packet_reader_peek(&reader) == 130)
  return 1;
 reader.options &= ~PACKET_READ_GENTLE_ON_EOF;

 while (state != PROCESS_REQUEST_DONE) {
  switch (packet_reader_peek(&reader)) {
  case 130:
   BUG("Should have already died when seeing EOF");
  case 128:

   if (is_command(reader.line, &command) ||
       is_valid_capability(reader.line))
    argv_array_push(&keys, reader.line);
   else
    die("unknown capability '%s'", reader.line);


   packet_reader_read(&reader);
   break;
  case 129:




   if (!keys.argc)
    return 1;
   state = PROCESS_REQUEST_DONE;
   break;
  case 131:

   packet_reader_read(&reader);

   state = PROCESS_REQUEST_DONE;
   break;
  }
 }

 if (!command)
  die("no command requested");

 command->command(the_repository, &keys, &reader);

 argv_array_clear(&keys);
 return 0;
}
