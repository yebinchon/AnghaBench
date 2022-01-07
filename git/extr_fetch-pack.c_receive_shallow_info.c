
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shallow_info {int shallow; scalar_t__ nr_theirs; scalar_t__ nr_ours; } ;
struct packet_reader {scalar_t__ line; scalar_t__ status; } ;
struct oid_array {int nr; int * oid; } ;
struct object_id {int dummy; } ;
struct fetch_pack_args {int deepen; } ;


 scalar_t__ PACKET_READ_DELIM ;
 scalar_t__ PACKET_READ_FLUSH ;
 scalar_t__ PACKET_READ_NORMAL ;
 int _ (char*) ;
 int * alternate_shallow_file ;
 int die (int ,scalar_t__) ;
 scalar_t__ get_oid_hex (char const*,struct object_id*) ;
 int lookup_object (int ,struct object_id*) ;
 int oid_array_append (struct oid_array*,struct object_id*) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 int parse_object (int ,struct object_id*) ;
 int prepare_shallow_info (struct shallow_info*,struct oid_array*) ;
 int process_section_header (struct packet_reader*,char*,int ) ;
 int register_shallow (int ,int *) ;
 int setup_alternate_shallow (int *,int **,int *) ;
 int * setup_temporary_shallow (int ) ;
 int shallow_lock ;
 scalar_t__ skip_prefix (scalar_t__,char*,char const**) ;
 int the_repository ;
 scalar_t__ unregister_shallow (struct object_id*) ;

__attribute__((used)) static void receive_shallow_info(struct fetch_pack_args *args,
     struct packet_reader *reader,
     struct oid_array *shallows,
     struct shallow_info *si)
{
 int unshallow_received = 0;

 process_section_header(reader, "shallow-info", 0);
 while (packet_reader_read(reader) == PACKET_READ_NORMAL) {
  const char *arg;
  struct object_id oid;

  if (skip_prefix(reader->line, "shallow ", &arg)) {
   if (get_oid_hex(arg, &oid))
    die(_("invalid shallow line: %s"), reader->line);
   oid_array_append(shallows, &oid);
   continue;
  }
  if (skip_prefix(reader->line, "unshallow ", &arg)) {
   if (get_oid_hex(arg, &oid))
    die(_("invalid unshallow line: %s"), reader->line);
   if (!lookup_object(the_repository, &oid))
    die(_("object not found: %s"), reader->line);

   if (!parse_object(the_repository, &oid))
    die(_("error in object: %s"), reader->line);
   if (unregister_shallow(&oid))
    die(_("no shallow found: %s"), reader->line);
   unshallow_received = 1;
   continue;
  }
  die(_("expected shallow/unshallow, got %s"), reader->line);
 }

 if (reader->status != PACKET_READ_FLUSH &&
     reader->status != PACKET_READ_DELIM)
  die(_("error processing shallow info: %d"), reader->status);

 if (args->deepen || unshallow_received) {





  int i;

  for (i = 0; i < shallows->nr; i++)
   register_shallow(the_repository, &shallows->oid[i]);
  setup_alternate_shallow(&shallow_lock, &alternate_shallow_file,
     ((void*)0));
  args->deepen = 1;
 } else if (shallows->nr) {





  prepare_shallow_info(si, shallows);
  if (si->nr_ours || si->nr_theirs)
   alternate_shallow_file =
    setup_temporary_shallow(si->shallow);
  else
   alternate_shallow_file = ((void*)0);
 } else {
  alternate_shallow_file = ((void*)0);
 }
}
