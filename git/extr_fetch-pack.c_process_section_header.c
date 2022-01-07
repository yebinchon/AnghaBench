
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_reader {int line; } ;


 scalar_t__ PACKET_READ_NORMAL ;
 int _ (char*) ;
 int die (int ,char const*,...) ;
 scalar_t__ packet_reader_peek (struct packet_reader*) ;
 int packet_reader_read (struct packet_reader*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int process_section_header(struct packet_reader *reader,
      const char *section, int peek)
{
 int ret;

 if (packet_reader_peek(reader) != PACKET_READ_NORMAL)
  die(_("error reading section header '%s'"), section);

 ret = !strcmp(reader->line, section);

 if (!peek) {
  if (!ret)
   die(_("expected '%s', received '%s'"),
       section, reader->line);
  packet_reader_read(reader);
 }

 return ret;
}
