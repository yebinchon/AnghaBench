
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int drivers; } ;
typedef TYPE_1__ git_diff_driver_registry ;
struct TYPE_13__ {int flags; scalar_t__ words; scalar_t__ fns; int name; } ;
typedef TYPE_2__ git_diff_driver_definition ;
struct TYPE_14__ {int name; int word_pattern; int type; } ;
typedef TYPE_3__ git_diff_driver ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int DIFF_DRIVER_PATTERNLIST ;
 TYPE_2__* builtin_defs ;
 int diff_driver_add_patterns (TYPE_3__*,scalar_t__,int ) ;
 int diff_driver_alloc (TYPE_3__**,int *,int ) ;
 int git_diff_driver_free (TYPE_3__*) ;
 int git_regexp_compile (int *,scalar_t__,int ) ;
 int git_strmap_set (int ,int ,TYPE_3__*) ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static int git_diff_driver_builtin(
 git_diff_driver **out,
 git_diff_driver_registry *reg,
 const char *driver_name)
{
 git_diff_driver_definition *ddef = ((void*)0);
 git_diff_driver *drv = ((void*)0);
 int error = 0;
 size_t idx;

 for (idx = 0; idx < ARRAY_SIZE(builtin_defs); ++idx) {
  if (!strcasecmp(driver_name, builtin_defs[idx].name)) {
   ddef = &builtin_defs[idx];
   break;
  }
 }
 if (!ddef)
  goto done;

 if ((error = diff_driver_alloc(&drv, ((void*)0), ddef->name)) < 0)
  goto done;

 drv->type = DIFF_DRIVER_PATTERNLIST;

 if (ddef->fns &&
  (error = diff_driver_add_patterns(
   drv, ddef->fns, ddef->flags)) < 0)
  goto done;

 if (ddef->words &&
     (error = git_regexp_compile(&drv->word_pattern, ddef->words, ddef->flags)) < 0)
  goto done;

 if ((error = git_strmap_set(reg->drivers, drv->name, drv)) < 0)
  goto done;

done:
 if (error && drv)
  git_diff_driver_free(drv);
 else
  *out = drv;

 return error;
}
