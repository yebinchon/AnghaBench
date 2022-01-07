
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int total_skipped; TYPE_1__* last_report; } ;
struct TYPE_3__ {int status; } ;


 int CL_TEST_SKIP ;
 TYPE_2__ _clar ;
 int abort_test () ;

void clar__skip(void)
{
 _clar.last_report->status = CL_TEST_SKIP;
 _clar.total_skipped++;
 abort_test();
}
