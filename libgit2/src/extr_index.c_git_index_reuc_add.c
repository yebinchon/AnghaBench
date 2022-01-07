
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_index_reuc_entry ;
typedef int git_index ;


 int assert (int) ;
 int index_entry_reuc_free (int *) ;
 int index_entry_reuc_init (int **,char const*,int,int const*,int,int const*,int,int const*) ;
 int index_reuc_insert (int *,int *) ;

int git_index_reuc_add(git_index *index, const char *path,
 int ancestor_mode, const git_oid *ancestor_oid,
 int our_mode, const git_oid *our_oid,
 int their_mode, const git_oid *their_oid)
{
 git_index_reuc_entry *reuc = ((void*)0);
 int error = 0;

 assert(index && path);

 if ((error = index_entry_reuc_init(&reuc, path, ancestor_mode,
   ancestor_oid, our_mode, our_oid, their_mode, their_oid)) < 0 ||
  (error = index_reuc_insert(index, reuc)) < 0)
  index_entry_reuc_free(reuc);

 return error;
}
