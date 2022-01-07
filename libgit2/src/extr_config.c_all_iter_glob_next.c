
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_config_iterator ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ git_config_entry ;
struct TYPE_6__ {int regex; } ;
typedef TYPE_2__ all_iter ;


 int all_iter_next (TYPE_1__**,int *) ;
 scalar_t__ git_regexp_match (int *,int ) ;

__attribute__((used)) static int all_iter_glob_next(git_config_entry **entry, git_config_iterator *_iter)
{
 int error;
 all_iter *iter = (all_iter *) _iter;





 while ((error = all_iter_next(entry, _iter)) == 0) {

  if (git_regexp_match(&iter->regex, (*entry)->name) != 0)
   continue;


  return 0;
 }

 return error;
}
