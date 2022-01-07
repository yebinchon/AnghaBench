
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entries; int odb_obj; } ;
typedef TYPE_1__ git_tree ;


 int git__free (TYPE_1__*) ;
 int git_array_clear (int ) ;
 int git_odb_object_free (int ) ;

void git_tree__free(void *_tree)
{
 git_tree *tree = _tree;

 git_odb_object_free(tree->odb_obj);
 git_array_clear(tree->entries);
 git__free(tree);
}
