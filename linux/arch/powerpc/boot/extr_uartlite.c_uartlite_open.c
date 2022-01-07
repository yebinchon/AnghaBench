
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ULITE_CONTROL ;
 int ULITE_CONTROL_RST_RX ;
 int out_be32 (scalar_t__,int ) ;
 scalar_t__ reg_base ;

__attribute__((used)) static int uartlite_open(void)
{

 out_be32(reg_base + ULITE_CONTROL, ULITE_CONTROL_RST_RX);
 return 0;
}
