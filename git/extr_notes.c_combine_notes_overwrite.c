
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int oidcpy (struct object_id*,struct object_id const*) ;

int combine_notes_overwrite(struct object_id *cur_oid,
       const struct object_id *new_oid)
{
 oidcpy(cur_oid, new_oid);
 return 0;
}
