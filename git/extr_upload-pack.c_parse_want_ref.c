
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int util; } ;
struct string_list {int dummy; } ;
struct packet_writer {int dummy; } ;
struct object_id {int dummy; } ;
struct object_array {int dummy; } ;
struct object {int flags; } ;


 int WANTED ;
 int add_object_array (struct object*,int *,struct object_array*) ;
 int die (char*,char const*) ;
 int oiddup (struct object_id*) ;
 int packet_writer_error (struct packet_writer*,char*,char const*) ;
 struct object* parse_object_or_die (struct object_id*,char const*) ;
 scalar_t__ read_ref (char const*,struct object_id*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 struct string_list_item* string_list_append (struct string_list*,char const*) ;

__attribute__((used)) static int parse_want_ref(struct packet_writer *writer, const char *line,
     struct string_list *wanted_refs,
     struct object_array *want_obj)
{
 const char *arg;
 if (skip_prefix(line, "want-ref ", &arg)) {
  struct object_id oid;
  struct string_list_item *item;
  struct object *o;

  if (read_ref(arg, &oid)) {
   packet_writer_error(writer, "unknown ref %s", arg);
   die("unknown ref %s", arg);
  }

  item = string_list_append(wanted_refs, arg);
  item->util = oiddup(&oid);

  o = parse_object_or_die(&oid, arg);
  if (!(o->flags & WANTED)) {
   o->flags |= WANTED;
   add_object_array(o, ((void*)0), want_obj);
  }

  return 1;
 }

 return 0;
}
