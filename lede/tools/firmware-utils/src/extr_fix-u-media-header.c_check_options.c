
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * file_name; } ;


 int ERR (char*,char*) ;
 int get_file_stat (TYPE_1__*) ;
 TYPE_1__ if_info ;
 int * ofname ;

__attribute__((used)) static int check_options(void)
{
 int ret;

 if (ofname == ((void*)0)) {
  ERR("no %s specified", "output file");
  return -1;
 }

 if (if_info.file_name == ((void*)0)) {
  ERR("no %s specified", "input file");
  return -1;
 }

 ret = get_file_stat(&if_info);
 if (ret)
  return ret;

 return 0;
}
