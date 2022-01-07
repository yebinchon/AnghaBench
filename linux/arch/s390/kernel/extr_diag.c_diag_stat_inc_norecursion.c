
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum diag_stat_enum { ____Placeholder_diag_stat_enum } diag_stat_enum ;
struct TYPE_4__ {int code; } ;
struct TYPE_3__ {int * counter; } ;


 TYPE_2__* diag_map ;
 TYPE_1__ diag_stat ;
 int this_cpu_inc (int ) ;
 int trace_s390_diagnose_norecursion (int ) ;

void diag_stat_inc_norecursion(enum diag_stat_enum nr)
{
 this_cpu_inc(diag_stat.counter[nr]);
 trace_s390_diagnose_norecursion(diag_map[nr].code);
}
