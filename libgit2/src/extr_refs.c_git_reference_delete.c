
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* symbolic; int oid; } ;
struct TYPE_5__ {scalar_t__ type; int name; int db; TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;
typedef int git_oid ;


 scalar_t__ GIT_REFERENCE_DIRECT ;
 int git_refdb_delete (int ,int ,int const*,char const*) ;

int git_reference_delete(git_reference *ref)
{
 const git_oid *old_id = ((void*)0);
 const char *old_target = ((void*)0);

 if (ref->type == GIT_REFERENCE_DIRECT)
  old_id = &ref->target.oid;
 else
  old_target = ref->target.symbolic;

 return git_refdb_delete(ref->db, ref->name, old_id, old_target);
}
