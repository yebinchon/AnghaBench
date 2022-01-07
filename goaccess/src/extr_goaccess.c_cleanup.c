
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_stdout; } ;


 TYPE_1__ conf ;
 int endwin () ;
 int glog ;
 int house_keeping () ;
 int output_logerrors (int ) ;

__attribute__((used)) static void
cleanup (int ret)
{


  if (!conf.output_stdout)
    endwin ();


  if (ret)
    output_logerrors (glog);

  house_keeping ();
}
