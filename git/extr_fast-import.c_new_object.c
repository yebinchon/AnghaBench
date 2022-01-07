
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct object_entry {TYPE_1__ idx; } ;
struct TYPE_4__ {scalar_t__ next_free; scalar_t__ end; } ;


 int alloc_objects (int ) ;
 TYPE_2__* blocks ;
 int object_entry_alloc ;
 int oidcpy (int *,struct object_id*) ;

__attribute__((used)) static struct object_entry *new_object(struct object_id *oid)
{
 struct object_entry *e;

 if (blocks->next_free == blocks->end)
  alloc_objects(object_entry_alloc);

 e = blocks->next_free++;
 oidcpy(&e->idx.oid, oid);
 return e;
}
