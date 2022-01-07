
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int word_pattern; int fn_patterns; } ;
typedef TYPE_1__ git_diff_driver ;
struct TYPE_6__ {int re; } ;


 int git__free (TYPE_1__*) ;
 int git_array_clear (int ) ;
 TYPE_3__* git_array_get (int ,size_t) ;
 size_t git_array_size (int ) ;
 int git_regexp_dispose (int *) ;

void git_diff_driver_free(git_diff_driver *driver)
{
 size_t i;

 if (!driver)
  return;

 for (i = 0; i < git_array_size(driver->fn_patterns); ++i)
  git_regexp_dispose(& git_array_get(driver->fn_patterns, i)->re);
 git_array_clear(driver->fn_patterns);

 git_regexp_dispose(&driver->word_pattern);

 git__free(driver);
}
