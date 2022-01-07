
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_iterator ;
typedef int git_iterator ;


 int tree_iterator_clear (int *) ;
 int tree_iterator_init (int *) ;

__attribute__((used)) static int tree_iterator_reset(git_iterator *i)
{
 tree_iterator *iter = (tree_iterator *)i;

 tree_iterator_clear(iter);
 return tree_iterator_init(iter);
}
