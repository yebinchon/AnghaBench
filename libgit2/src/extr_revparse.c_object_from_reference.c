
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* db; } ;
typedef TYPE_2__ git_reference ;
typedef int git_object ;
struct TYPE_8__ {int repo; } ;


 int GIT_OBJECT_ANY ;
 int git_object_lookup (int **,int ,int ,int ) ;
 int git_reference_free (TYPE_2__*) ;
 scalar_t__ git_reference_resolve (TYPE_2__**,TYPE_2__*) ;
 int git_reference_target (TYPE_2__*) ;

__attribute__((used)) static int object_from_reference(git_object **object, git_reference *reference)
{
 git_reference *resolved = ((void*)0);
 int error;

 if (git_reference_resolve(&resolved, reference) < 0)
  return -1;

 error = git_object_lookup(object, reference->db->repo, git_reference_target(resolved), GIT_OBJECT_ANY);
 git_reference_free(resolved);

 return error;
}
