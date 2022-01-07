
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int regex; int have_regex; int name; TYPE_4__* iter; } ;
typedef TYPE_1__ multivar_iter ;
typedef int git_config_iterator ;
struct TYPE_7__ {int value; int name; } ;
typedef TYPE_2__ git_config_entry ;
struct TYPE_8__ {int (* next ) (TYPE_2__**,TYPE_4__*) ;} ;


 scalar_t__ git__strcmp (int ,int ) ;
 scalar_t__ git_regexp_match (int *,int ) ;
 int stub1 (TYPE_2__**,TYPE_4__*) ;

__attribute__((used)) static int multivar_iter_next(git_config_entry **entry, git_config_iterator *_iter)
{
 multivar_iter *iter = (multivar_iter *) _iter;
 int error = 0;

 while ((error = iter->iter->next(entry, iter->iter)) == 0) {
  if (git__strcmp(iter->name, (*entry)->name))
   continue;

  if (!iter->have_regex)
   return 0;

  if (git_regexp_match(&iter->regex, (*entry)->value) == 0)
   return 0;
 }

 return error;
}
