
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int base; } ;
struct TYPE_5__ {int base; } ;
struct TYPE_4__ {int drivers; int lock; } ;


 int git__on_shutdown (int ) ;
 int git_merge_driver__binary ;
 TYPE_3__ git_merge_driver__text ;
 TYPE_2__ git_merge_driver__union ;
 int git_merge_driver_global_shutdown ;
 scalar_t__ git_rwlock_init (int *) ;
 int git_vector_free_deep (int *) ;
 int git_vector_init (int *,int,int ) ;
 int merge_driver_entry_cmp ;
 int merge_driver_name__binary ;
 int merge_driver_name__text ;
 int merge_driver_name__union ;
 TYPE_1__ merge_driver_registry ;
 int merge_driver_registry_insert (int ,int *) ;

int git_merge_driver_global_init(void)
{
 int error;

 if (git_rwlock_init(&merge_driver_registry.lock) < 0)
  return -1;

 if ((error = git_vector_init(&merge_driver_registry.drivers, 3,
  merge_driver_entry_cmp)) < 0)
  goto done;

 if ((error = merge_driver_registry_insert(
   merge_driver_name__text, &git_merge_driver__text.base)) < 0 ||
  (error = merge_driver_registry_insert(
   merge_driver_name__union, &git_merge_driver__union.base)) < 0 ||
  (error = merge_driver_registry_insert(
   merge_driver_name__binary, &git_merge_driver__binary)) < 0)
  goto done;

 git__on_shutdown(git_merge_driver_global_shutdown);

done:
 if (error < 0)
  git_vector_free_deep(&merge_driver_registry.drivers);

 return error;
}
