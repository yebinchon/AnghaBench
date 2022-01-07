
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* git_iterator_walk_cb ) (int const**,void*) ;
typedef int git_iterator ;
typedef int git_index_entry ;


 int GIT_ERROR_CHECK_ALLOC (int const**) ;
 int GIT_ITEROVER ;
 int ** git__calloc (size_t,int) ;
 int git__free (int **) ;
 int git_index_entry_cmp (int const*,int const*) ;
 int git_iterator_advance (int const**,int *) ;
 int git_iterator_current (int const**,int *) ;

int git_iterator_walk(
 git_iterator **iterators,
 size_t cnt,
 git_iterator_walk_cb cb,
 void *data)
{
 const git_index_entry **iterator_item;
 const git_index_entry **cur_items;
 const git_index_entry *first_match;
 size_t i, j;
 int error = 0;

 iterator_item = git__calloc(cnt, sizeof(git_index_entry *));
 cur_items = git__calloc(cnt, sizeof(git_index_entry *));

 GIT_ERROR_CHECK_ALLOC(iterator_item);
 GIT_ERROR_CHECK_ALLOC(cur_items);


 for (i = 0; i < cnt; i++) {
  error = git_iterator_current(&iterator_item[i], iterators[i]);

  if (error < 0 && error != GIT_ITEROVER)
   goto done;
 }

 while (1) {
  for (i = 0; i < cnt; i++)
   cur_items[i] = ((void*)0);

  first_match = ((void*)0);


  for (i = 0; i < cnt; i++) {
   if (iterator_item[i] == ((void*)0))
    continue;

   if (first_match == ((void*)0)) {
    first_match = iterator_item[i];
    cur_items[i] = iterator_item[i];
   } else {
    int path_diff = git_index_entry_cmp(iterator_item[i], first_match);

    if (path_diff < 0) {




     for (j = 0; j < i; j++)
      cur_items[j] = ((void*)0);

     first_match = iterator_item[i];
     cur_items[i] = iterator_item[i];
    } else if (path_diff == 0) {
     cur_items[i] = iterator_item[i];
    }
   }
  }

  if (first_match == ((void*)0))
   break;

  if ((error = cb(cur_items, data)) != 0)
   goto done;


  for (i = 0; i < cnt; i++) {
   if (cur_items[i] == ((void*)0))
    continue;

   error = git_iterator_advance(&iterator_item[i], iterators[i]);

   if (error < 0 && error != GIT_ITEROVER)
    goto done;
  }
 }

done:
 git__free((git_index_entry **)iterator_item);
 git__free((git_index_entry **)cur_items);

 if (error == GIT_ITEROVER)
  error = 0;

 return error;
}
