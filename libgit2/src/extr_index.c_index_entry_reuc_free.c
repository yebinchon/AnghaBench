
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_reuc_entry ;


 int git__free (int *) ;

__attribute__((used)) static void index_entry_reuc_free(git_index_reuc_entry *reuc)
{
 git__free(reuc);
}
