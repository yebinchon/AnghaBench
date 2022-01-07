
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct progress {int dummy; } ;


 int _ (char*) ;
 int finish_if_sparse (struct progress*) ;
 int stop_progress_msg (struct progress**,int ) ;

void stop_progress(struct progress **p_progress)
{
 finish_if_sparse(*p_progress);

 stop_progress_msg(p_progress, _("done"));
}
