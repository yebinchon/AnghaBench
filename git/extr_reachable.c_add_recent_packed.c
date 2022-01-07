
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int mtime; } ;
struct object_id {int dummy; } ;
struct object {int flags; } ;


 int SEEN ;
 int add_recent_object (struct object_id const*,int ,void*) ;
 struct object* lookup_object (int ,struct object_id const*) ;
 int the_repository ;

__attribute__((used)) static int add_recent_packed(const struct object_id *oid,
        struct packed_git *p, uint32_t pos,
        void *data)
{
 struct object *obj = lookup_object(the_repository, oid);

 if (obj && obj->flags & SEEN)
  return 0;
 add_recent_object(oid, p->mtime, data);
 return 0;
}
