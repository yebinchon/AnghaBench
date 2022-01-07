
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int num_tests; } ;
struct TYPE_7__ {int processed; } ;
typedef TYPE_1__ GLog ;


 int MIN (int,int ) ;
 TYPE_6__ conf ;
 int pre_process_log (TYPE_1__*,char*,int) ;
 int uncount_invalid (TYPE_1__*) ;
 int uncount_processed (TYPE_1__*) ;

__attribute__((used)) static int
read_line (GLog * glog, char *line, int *test, int *cnt, int dry_run)
{
  int ret = 0;
  int tests = conf.num_tests;


  if ((ret = pre_process_log (glog, line, dry_run)) == 0 && *test)
    *test = 0;


  if (ret == -1)
    return 0;



  tests = MIN (conf.num_tests, glog->processed);



  if (conf.num_tests && ++(*cnt) == tests && *test) {
    uncount_processed (glog);
    uncount_invalid (glog);
    return 1;
  }

  return 0;
}
