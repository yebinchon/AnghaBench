
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct cached_object {struct object_id const oid; } ;
struct TYPE_2__ {struct object_id const* empty_tree; } ;


 int cached_object_nr ;
 struct cached_object* cached_objects ;
 struct cached_object empty_tree ;
 scalar_t__ oideq (struct object_id const*,struct object_id const*) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static struct cached_object *find_cached_object(const struct object_id *oid)
{
 int i;
 struct cached_object *co = cached_objects;

 for (i = 0; i < cached_object_nr; i++, co++) {
  if (oideq(&co->oid, oid))
   return co;
 }
 if (oideq(oid, the_hash_algo->empty_tree))
  return &empty_tree;
 return ((void*)0);
}
