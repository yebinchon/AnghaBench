
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ report_suite_names; } ;


 TYPE_1__ _clar ;
 int printf (char*,char const*) ;

__attribute__((used)) static void clar_print_onsuite(const char *suite_name, int suite_index)
{
 if (_clar.report_suite_names)
  printf("\n%s", suite_name);

 (void)suite_index;
}
