
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ba; } ;
struct TYPE_3__ {int ba; } ;
union cvmx_sli_mem_access_subidx {TYPE_2__ s; TYPE_1__ cn68xx; } ;


 int OCTEON_CN68XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;

__attribute__((used)) static void __cvmx_increment_ba(union cvmx_sli_mem_access_subidx *pmas)
{
 if (OCTEON_IS_MODEL(OCTEON_CN68XX))
  pmas->cn68xx.ba++;
 else
  pmas->s.ba++;
}
