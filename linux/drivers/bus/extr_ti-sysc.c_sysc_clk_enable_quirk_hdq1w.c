
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sysc {int dummy; } ;


 int BIT (int) ;
 int sysc_read (struct sysc*,int) ;
 int sysc_write (struct sysc*,int,int ) ;

__attribute__((used)) static void sysc_clk_enable_quirk_hdq1w(struct sysc *ddata)
{
 int offset = 0x0c;
 u16 val;

 val = sysc_read(ddata, offset);
 val |= BIT(5);
 sysc_write(ddata, offset, val);
}
