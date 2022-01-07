
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_writer {int dummy; } ;
struct object_id {int dummy; } ;
struct object_array {int dummy; } ;
struct object {int flags; } ;


 int WANTED ;
 int add_object_array (struct object*,int *,struct object_array*) ;
 int die (char*,char const*) ;
 scalar_t__ get_oid_hex (char const*,struct object_id*) ;
 char const* oid_to_hex (struct object_id*) ;
 int packet_writer_error (struct packet_writer*,char*,char const*) ;
 struct object* parse_object (int ,struct object_id*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int the_repository ;

__attribute__((used)) static int parse_want(struct packet_writer *writer, const char *line,
        struct object_array *want_obj)
{
 const char *arg;
 if (skip_prefix(line, "want ", &arg)) {
  struct object_id oid;
  struct object *o;

  if (get_oid_hex(arg, &oid))
   die("git upload-pack: protocol error, "
       "expected to get oid, not '%s'", line);

  o = parse_object(the_repository, &oid);
  if (!o) {
   packet_writer_error(writer,
         "upload-pack: not our ref %s",
         oid_to_hex(&oid));
   die("git upload-pack: not our ref %s",
       oid_to_hex(&oid));
  }

  if (!(o->flags & WANTED)) {
   o->flags |= WANTED;
   add_object_array(o, ((void*)0), want_obj);
  }

  return 1;
 }

 return 0;
}
