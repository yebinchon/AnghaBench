
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int odb_obj; } ;
typedef TYPE_1__ git_tree ;
typedef int git_odb_object ;


 int git_odb_object_data (int *) ;
 scalar_t__ git_odb_object_dup (int *,int *) ;
 int git_odb_object_size (int *) ;
 scalar_t__ git_tree__parse_raw (TYPE_1__*,int ,int ) ;

int git_tree__parse(void *_tree, git_odb_object *odb_obj)
{
 git_tree *tree = _tree;

 if ((git_tree__parse_raw(tree,
     git_odb_object_data(odb_obj),
     git_odb_object_size(odb_obj))) < 0)
  return -1;

 if (git_odb_object_dup(&tree->odb_obj, odb_obj) < 0)
  return -1;

 return 0;
}
