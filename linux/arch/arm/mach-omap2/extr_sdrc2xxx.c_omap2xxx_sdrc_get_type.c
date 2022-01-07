
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int m_type; } ;


 TYPE_1__ mem_timings ;

__attribute__((used)) static u32 omap2xxx_sdrc_get_type(void)
{
 return mem_timings.m_type;
}
