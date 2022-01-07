
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cos_max; } ;
union cpuid_0x10_x_edx {TYPE_1__ split; int full; } ;
union cpuid_0x10_3_eax {int full; } ;
typedef int u32 ;
struct TYPE_4__ {int delay_linear; int bw_gran; scalar_t__ min_bw; } ;
struct rdt_resource {int data_width; int alloc_capable; int alloc_enabled; TYPE_2__ membw; int default_ctrl; scalar_t__ num_closid; } ;


 int MAX_MBA_BW_AMD ;
 int cpuid_count (int,int,int *,int *,int *,int *) ;

__attribute__((used)) static bool __rdt_get_mem_config_amd(struct rdt_resource *r)
{
 union cpuid_0x10_3_eax eax;
 union cpuid_0x10_x_edx edx;
 u32 ebx, ecx;

 cpuid_count(0x80000020, 1, &eax.full, &ebx, &ecx, &edx.full);
 r->num_closid = edx.split.cos_max + 1;
 r->default_ctrl = MAX_MBA_BW_AMD;


 r->membw.delay_linear = 0;

 r->membw.min_bw = 0;
 r->membw.bw_gran = 1;

 r->data_width = 4;

 r->alloc_capable = 1;
 r->alloc_enabled = 1;

 return 1;
}
