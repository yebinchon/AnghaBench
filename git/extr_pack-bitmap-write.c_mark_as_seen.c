
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;


 int ALLOC_GROW (struct object**,scalar_t__,int ) ;
 struct object** seen_objects ;
 int seen_objects_alloc ;
 scalar_t__ seen_objects_nr ;

__attribute__((used)) static inline void mark_as_seen(struct object *object)
{
 ALLOC_GROW(seen_objects, seen_objects_nr + 1, seen_objects_alloc);
 seen_objects[seen_objects_nr++] = object;
}
