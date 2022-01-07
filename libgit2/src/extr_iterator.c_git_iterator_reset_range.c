
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* cb; } ;
typedef TYPE_2__ git_iterator ;
struct TYPE_6__ {int (* reset ) (TYPE_2__*) ;} ;


 scalar_t__ iterator_reset_range (TYPE_2__*,char const*,char const*) ;
 int stub1 (TYPE_2__*) ;

int git_iterator_reset_range(
 git_iterator *i, const char *start, const char *end)
{
 if (iterator_reset_range(i, start, end) < 0)
  return -1;

 return i->cb->reset(i);
}
