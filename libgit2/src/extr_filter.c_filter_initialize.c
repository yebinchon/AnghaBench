
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int initialized; TYPE_2__* filter; } ;
typedef TYPE_1__ git_filter_def ;
struct TYPE_5__ {int (* initialize ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int filter_initialize(git_filter_def *fdef)
{
 int error = 0;

 if (!fdef->initialized && fdef->filter && fdef->filter->initialize) {
  if ((error = fdef->filter->initialize(fdef->filter)) < 0)
   return error;
 }

 fdef->initialized = 1;
 return 0;
}
