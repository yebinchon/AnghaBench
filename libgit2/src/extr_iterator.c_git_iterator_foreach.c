
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* git_iterator_foreach_cb ) (int const*,void*) ;
typedef int git_iterator ;
typedef int git_index_entry ;


 int GIT_ITEROVER ;
 int git_iterator_advance (int const**,int *) ;
 int git_iterator_current (int const**,int *) ;

int git_iterator_foreach(
 git_iterator *iterator,
 git_iterator_foreach_cb cb,
 void *data)
{
 const git_index_entry *iterator_item;
 int error = 0;

 if ((error = git_iterator_current(&iterator_item, iterator)) < 0)
  goto done;

 if ((error = cb(iterator_item, data)) != 0)
  goto done;

 while (1) {
  if ((error = git_iterator_advance(&iterator_item, iterator)) < 0)
   goto done;

  if ((error = cb(iterator_item, data)) != 0)
   goto done;
 }

done:
 if (error == GIT_ITEROVER)
  error = 0;

 return error;
}
