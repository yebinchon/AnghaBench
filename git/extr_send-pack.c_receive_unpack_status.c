
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_reader {int line; } ;


 scalar_t__ PACKET_READ_NORMAL ;
 int _ (char*) ;
 int error (int ,...) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 int skip_prefix (int ,char*,int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int receive_unpack_status(struct packet_reader *reader)
{
 if (packet_reader_read(reader) != PACKET_READ_NORMAL)
  return error(_("unexpected flush packet while reading remote unpack status"));
 if (!skip_prefix(reader->line, "unpack ", &reader->line))
  return error(_("unable to parse remote unpack status: %s"), reader->line);
 if (strcmp(reader->line, "ok"))
  return error(_("remote unpack failed: %s"), reader->line);
 return 0;
}
