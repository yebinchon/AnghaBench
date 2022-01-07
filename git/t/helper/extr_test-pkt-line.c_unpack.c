
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_reader {int status; char* line; } ;


 int PACKET_READ_CHOMP_NEWLINE ;



 int PACKET_READ_GENTLE_ON_EOF ;

 int packet_reader_init (struct packet_reader*,int ,int *,int ,int) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 int printf (char*,...) ;

__attribute__((used)) static void unpack(void)
{
 struct packet_reader reader;
 packet_reader_init(&reader, 0, ((void*)0), 0,
      PACKET_READ_GENTLE_ON_EOF |
      PACKET_READ_CHOMP_NEWLINE);

 while (packet_reader_read(&reader) != 130) {
  switch (reader.status) {
  case 130:
   break;
  case 128:
   printf("%s\n", reader.line);
   break;
  case 129:
   printf("0000\n");
   break;
  case 131:
   printf("0001\n");
   break;
  }
 }
}
