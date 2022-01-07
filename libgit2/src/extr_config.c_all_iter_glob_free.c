
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_config_iterator ;
struct TYPE_2__ {int regex; } ;
typedef TYPE_1__ all_iter ;


 int all_iter_free (int *) ;
 int git_regexp_dispose (int *) ;

__attribute__((used)) static void all_iter_glob_free(git_config_iterator *_iter)
{
 all_iter *iter = (all_iter *) _iter;

 git_regexp_dispose(&iter->regex);
 all_iter_free(_iter);
}
