
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_reader {scalar_t__ status; int line; } ;
struct fetch_pack_args {scalar_t__ deepen; scalar_t__ stateless_rpc; } ;


 scalar_t__ PACKET_READ_FLUSH ;
 scalar_t__ PACKET_READ_NORMAL ;
 int _ (char*) ;
 int die (int ) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 scalar_t__ starts_with (int ,char*) ;

__attribute__((used)) static void consume_shallow_list(struct fetch_pack_args *args,
     struct packet_reader *reader)
{
 if (args->stateless_rpc && args->deepen) {




  while (packet_reader_read(reader) == PACKET_READ_NORMAL) {
   if (starts_with(reader->line, "shallow "))
    continue;
   if (starts_with(reader->line, "unshallow "))
    continue;
   die(_("git fetch-pack: expected shallow list"));
  }
  if (reader->status != PACKET_READ_FLUSH)
   die(_("git fetch-pack: expected a flush packet after shallow list"));
 }
}
