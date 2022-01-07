
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int symbolic; } ;
struct TYPE_7__ {int name; TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;


 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int git__strcmp (int ,int ) ;
 scalar_t__ git_reference__read_head (TYPE_2__**,int *,char const*) ;
 int git_reference_free (TYPE_2__*) ;
 scalar_t__ git_reference_type (TYPE_2__*) ;

__attribute__((used)) static int branch_equals(git_repository *repo, const char *path, void *payload)
{
 git_reference *branch = (git_reference *) payload;
 git_reference *head = ((void*)0);
 int equal = 0;

 if (git_reference__read_head(&head, repo, path) < 0 ||
  git_reference_type(head) != GIT_REFERENCE_SYMBOLIC)
  goto done;

 equal = !git__strcmp(head->target.symbolic, branch->name);

done:
 git_reference_free(head);
 return equal;
}
