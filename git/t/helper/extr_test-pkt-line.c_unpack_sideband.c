
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_reader {int status; int* line; int pktlen; } ;


 int PACKET_READ_CHOMP_NEWLINE ;



 int PACKET_READ_GENTLE_ON_EOF ;

 int die (char*,int) ;
 int packet_reader_init (struct packet_reader*,int ,int *,int ,int) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 int write_or_die (int,int ,int ) ;

__attribute__((used)) static void unpack_sideband(void)
{
 struct packet_reader reader;
 packet_reader_init(&reader, 0, ((void*)0), 0,
      PACKET_READ_GENTLE_ON_EOF |
      PACKET_READ_CHOMP_NEWLINE);

 while (packet_reader_read(&reader) != 130) {
  int band;
  int fd;

  switch (reader.status) {
  case 130:
   break;
  case 128:
   band = reader.line[0] & 0xff;
   if (band < 1 || band > 2)
    die("unexpected side band %d", band);
   fd = band;

   write_or_die(fd, reader.line + 1, reader.pktlen - 1);
   break;
  case 129:
   return;
  case 131:
   break;
  }
 }
}
