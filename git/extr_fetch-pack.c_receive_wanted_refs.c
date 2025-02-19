
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int old_oid; } ;
struct packet_reader {scalar_t__ line; scalar_t__ status; } ;
struct object_id {int dummy; } ;


 scalar_t__ PACKET_READ_DELIM ;
 scalar_t__ PACKET_READ_NORMAL ;
 int _ (char*) ;
 struct ref** bsearch (char const*,struct ref**,int,int,int ) ;
 int cmp_name_ref ;
 int die (int ,scalar_t__) ;
 int oidcpy (int *,struct object_id*) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 scalar_t__ parse_oid_hex (scalar_t__,struct object_id*,char const**) ;
 int process_section_header (struct packet_reader*,char*,int ) ;

__attribute__((used)) static void receive_wanted_refs(struct packet_reader *reader,
    struct ref **sought, int nr_sought)
{
 process_section_header(reader, "wanted-refs", 0);
 while (packet_reader_read(reader) == PACKET_READ_NORMAL) {
  struct object_id oid;
  const char *end;
  struct ref **found;

  if (parse_oid_hex(reader->line, &oid, &end) || *end++ != ' ')
   die(_("expected wanted-ref, got '%s'"), reader->line);

  found = bsearch(end, sought, nr_sought, sizeof(*sought),
    cmp_name_ref);
  if (!found)
   die(_("unexpected wanted-ref: '%s'"), reader->line);
  oidcpy(&(*found)->old_oid, &oid);
 }

 if (reader->status != PACKET_READ_DELIM)
  die(_("error processing wanted refs: %d"), reader->status);
}
