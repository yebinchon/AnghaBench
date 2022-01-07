
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct ref {int name; scalar_t__ exact_oid; struct object_id old_oid; struct ref* next; } ;
struct object {int flags; } ;


 int COMPLETE ;
 struct object* lookup_object (int ,struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;
 int packet_buf_write (struct strbuf*,char*,int ) ;
 int server_supports_feature (char*,char*,int ) ;
 int the_repository ;

__attribute__((used)) static void add_wants(int no_dependents, const struct ref *wants, struct strbuf *req_buf)
{
 int use_ref_in_want = server_supports_feature("fetch", "ref-in-want", 0);

 for ( ; wants ; wants = wants->next) {
  const struct object_id *remote = &wants->old_oid;
  struct object *o;
  if (!no_dependents &&
      ((o = lookup_object(the_repository, remote)) != ((void*)0)) &&
      (o->flags & COMPLETE)) {
   continue;
  }

  if (!use_ref_in_want || wants->exact_oid)
   packet_buf_write(req_buf, "want %s\n", oid_to_hex(remote));
  else
   packet_buf_write(req_buf, "want-ref %s\n", wants->name);
 }
}
