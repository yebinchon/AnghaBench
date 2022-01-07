
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rev_info {int repo; } ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int flags; } ;


 int SEEN ;
 int UNINTERESTING ;
 struct object* parse_object (int ,struct object_id const*) ;

__attribute__((used)) static int mark_uninteresting(const struct object_id *oid,
         struct packed_git *pack,
         uint32_t pos,
         void *cb)
{
 struct rev_info *revs = cb;
 struct object *o = parse_object(revs->repo, oid);
 o->flags |= UNINTERESTING | SEEN;
 return 0;
}
