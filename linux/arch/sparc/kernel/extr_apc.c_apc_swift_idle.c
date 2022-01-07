
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APC_IDLE_ON ;
 int APC_IDLE_REG ;
 int AUXIO_LED ;
 int apc_readb (int ) ;
 int apc_writeb (int,int ) ;
 int set_auxio (int,int) ;

__attribute__((used)) static void apc_swift_idle(void)
{




 apc_writeb(apc_readb(APC_IDLE_REG) | APC_IDLE_ON, APC_IDLE_REG);




}
