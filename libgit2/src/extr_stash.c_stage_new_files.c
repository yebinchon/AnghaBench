
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_ITERATOR_OPTIONS_INIT ;
 int git_index_free (int *) ;
 int git_index_new (int **) ;
 int git_iterator_for_tree (int **,int *,int *) ;
 int git_iterator_free (int *) ;
 int git_iterator_walk (int **,int,int ,int *) ;
 int stage_new_file ;

__attribute__((used)) static int stage_new_files(
 git_index **out,
 git_tree *parent_tree,
 git_tree *tree)
{
 git_iterator *iterators[2] = { ((void*)0), ((void*)0) };
 git_iterator_options iterator_options = GIT_ITERATOR_OPTIONS_INIT;
 git_index *index = ((void*)0);
 int error;

 if ((error = git_index_new(&index)) < 0 ||
  (error = git_iterator_for_tree(
   &iterators[0], parent_tree, &iterator_options)) < 0 ||
  (error = git_iterator_for_tree(
   &iterators[1], tree, &iterator_options)) < 0)
  goto done;

 error = git_iterator_walk(iterators, 2, stage_new_file, index);

done:
 if (error < 0)
  git_index_free(index);
 else
  *out = index;

 git_iterator_free(iterators[0]);
 git_iterator_free(iterators[1]);

 return error;
}
