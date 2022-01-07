
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;
typedef int GJSON ;


 int NL ;
 int OVERALL_LOGSIZE ;
 int TAB ;
 scalar_t__ get_log_sizes () ;
 int nlines ;
 int pjson (int *,char*,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
poverall_log_size (GJSON * json, int sp)
{
  pjson (json, "%.*s\"%s\": %jd,%.*s", sp, TAB, OVERALL_LOGSIZE,
         (intmax_t) get_log_sizes (), nlines, NL);
}
