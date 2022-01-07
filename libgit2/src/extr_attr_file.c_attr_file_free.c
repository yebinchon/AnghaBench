
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; int pool; } ;
typedef TYPE_1__ git_attr_file ;


 int git__free (TYPE_1__*) ;
 int git__memzero (TYPE_1__*,int) ;
 int git_attr_file__clear_rules (TYPE_1__*,int) ;
 int git_mutex_free (int *) ;
 int git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;
 int git_pool_clear (int *) ;

__attribute__((used)) static void attr_file_free(git_attr_file *file)
{
 bool unlock = !git_mutex_lock(&file->lock);
 git_attr_file__clear_rules(file, 0);
 git_pool_clear(&file->pool);
 if (unlock)
  git_mutex_unlock(&file->lock);
 git_mutex_free(&file->lock);

 git__memzero(file, sizeof(*file));
 git__free(file);
}
