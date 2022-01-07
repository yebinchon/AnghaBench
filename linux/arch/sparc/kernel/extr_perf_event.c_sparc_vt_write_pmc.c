
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int (* read_pcr ) (int) ;int (* write_pcr ) (int,int) ;int (* write_pic ) (int,int) ;} ;


 int PCR_N4_NTC ;
 int PCR_N4_OV ;
 TYPE_1__* pcr_ops ;
 int stub1 (int) ;
 int stub2 (int,int) ;
 int stub3 (int,int) ;

__attribute__((used)) static void sparc_vt_write_pmc(int idx, u64 val)
{
 u64 pcr;

 pcr = pcr_ops->read_pcr(idx);

 pcr &= ~(PCR_N4_OV | PCR_N4_NTC);

 pcr_ops->write_pic(idx, val & 0xffffffff);

 pcr_ops->write_pcr(idx, pcr);
}
