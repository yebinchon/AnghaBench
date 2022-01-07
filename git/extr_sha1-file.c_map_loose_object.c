
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 void* map_loose_object_1 (struct repository*,int *,struct object_id const*,unsigned long*) ;

void *map_loose_object(struct repository *r,
         const struct object_id *oid,
         unsigned long *size)
{
 return map_loose_object_1(r, ((void*)0), oid, size);
}
