
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sysc {int dummy; } ;


 int BIT (int) ;
 int sysc_write (struct sysc*,int,int ) ;

__attribute__((used)) static void sysc_module_enable_quirk_sgx(struct sysc *ddata)
{
 int offset = 0xff08;
 u32 val = BIT(31);

 sysc_write(ddata, offset, val);
}
