
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry_path; int root; } ;
typedef TYPE_1__ tree_iterator ;
typedef int git_iterator ;


 int git_buf_dispose (int *) ;
 int git_tree_free (int ) ;
 int tree_iterator_clear (TYPE_1__*) ;

__attribute__((used)) static void tree_iterator_free(git_iterator *i)
{
 tree_iterator *iter = (tree_iterator *)i;

 tree_iterator_clear(iter);

 git_tree_free(iter->root);
 git_buf_dispose(&iter->entry_path);
}
