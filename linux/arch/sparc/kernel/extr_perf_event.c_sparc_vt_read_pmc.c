
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int (* read_pic ) (int) ;} ;


 TYPE_1__* pcr_ops ;
 int stub1 (int) ;

__attribute__((used)) static u32 sparc_vt_read_pmc(int idx)
{
 u64 val = pcr_ops->read_pic(idx);

 return val & 0xffffffff;
}
