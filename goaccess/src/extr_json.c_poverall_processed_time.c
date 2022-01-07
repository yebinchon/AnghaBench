
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ store_accumulated_time; } ;
typedef int GJSON ;


 int OVERALL_GENTIME ;
 TYPE_1__ conf ;
 scalar_t__ end_proc ;
 scalar_t__ ht_get_genstats (char*) ;
 int pskeyu64val (int *,int ,scalar_t__,int,int ) ;
 scalar_t__ start_proc ;

__attribute__((used)) static void
poverall_processed_time (GJSON * json, int sp)
{
  uint64_t elapsed_proc = end_proc - start_proc;






  pskeyu64val (json, OVERALL_GENTIME, elapsed_proc, sp, 0);
}
