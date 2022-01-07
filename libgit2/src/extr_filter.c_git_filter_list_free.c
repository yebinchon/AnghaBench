
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {int filters; } ;
typedef TYPE_1__ git_filter_list ;
struct TYPE_8__ {int payload; TYPE_3__* filter; } ;
typedef TYPE_2__ git_filter_entry ;
struct TYPE_9__ {int (* cleanup ) (TYPE_3__*,int ) ;} ;


 int git__free (TYPE_1__*) ;
 int git_array_clear (int ) ;
 TYPE_2__* git_array_get (int ,scalar_t__) ;
 scalar_t__ git_array_size (int ) ;
 int stub1 (TYPE_3__*,int ) ;

void git_filter_list_free(git_filter_list *fl)
{
 uint32_t i;

 if (!fl)
  return;

 for (i = 0; i < git_array_size(fl->filters); ++i) {
  git_filter_entry *fe = git_array_get(fl->filters, i);
  if (fe->filter->cleanup)
   fe->filter->cleanup(fe->filter, fe->payload);
 }

 git_array_clear(fl->filters);
 git__free(fl);
}
