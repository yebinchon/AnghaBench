
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ignores; int base; } ;
typedef TYPE_1__ filesystem_iterator ;


 int git_ignore__pop_dir (int *) ;
 scalar_t__ iterator__honor_ignores (int *) ;

__attribute__((used)) static void filesystem_iterator_frame_pop_ignores(
 filesystem_iterator *iter)
{
 if (iterator__honor_ignores(&iter->base))
  git_ignore__pop_dir(&iter->ignores);
}
