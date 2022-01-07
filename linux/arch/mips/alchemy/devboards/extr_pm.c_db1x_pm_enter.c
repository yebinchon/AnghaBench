
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int AU1000_SYS_CNTRCTRL ;
 int AU1000_SYS_TOYMATCH2 ;
 int AU1000_SYS_TOYREAD ;
 int AU1000_SYS_WAKEMSK ;
 int AU1000_SYS_WAKESRC ;
 int BCSR_HEXCLEAR ;
 int BCSR_INTCLR ;
 size_t BCSR_INTSET ;
 int BCSR_INTSTAT ;
 int BCSR_MASKCLR ;
 int BCSR_MASKSET ;
 int BCSR_STATUS ;
 int BCSR_SYSTEM ;
 int BCSR_WHOAMI ;
 scalar_t__ BCSR_WHOAMI_BOARD (int) ;
 scalar_t__ BCSR_WHOAMI_DB1200 ;
 int SYS_CNTRL_M20 ;
 int alchemy_gpio1_input_enable () ;
 int alchemy_rdsys (int ) ;
 int alchemy_wrsys (scalar_t__,int ) ;
 int au_sleep () ;
 void* bcsr_read (int) ;
 int bcsr_write (int,unsigned short) ;
 scalar_t__ db1x_pm_sleep_secs ;
 scalar_t__ db1x_pm_wakemsk ;

__attribute__((used)) static int db1x_pm_enter(suspend_state_t state)
{
 unsigned short bcsrs[16];
 int i, j, hasint;


 hasint = bcsr_read(BCSR_WHOAMI);
 hasint = BCSR_WHOAMI_BOARD(hasint) >= BCSR_WHOAMI_DB1200;
 j = (hasint) ? BCSR_MASKSET : BCSR_SYSTEM;

 for (i = BCSR_STATUS; i <= j; i++)
  bcsrs[i] = bcsr_read(i);


 bcsr_write(BCSR_HEXCLEAR, 3);


 alchemy_gpio1_input_enable();


 alchemy_wrsys(0, AU1000_SYS_WAKEMSK);
 alchemy_wrsys(0, AU1000_SYS_WAKESRC);

 alchemy_wrsys(db1x_pm_wakemsk, AU1000_SYS_WAKEMSK);


 while (alchemy_rdsys(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_M20)
  asm volatile ("nop");

 alchemy_wrsys(alchemy_rdsys(AU1000_SYS_TOYREAD) + db1x_pm_sleep_secs,
        AU1000_SYS_TOYMATCH2);


 while (alchemy_rdsys(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_M20)
  asm volatile ("nop");


 au_sleep();



 for (i = BCSR_STATUS; i <= BCSR_SYSTEM; i++)
  bcsr_write(i, bcsrs[i]);


 if (hasint) {
  bcsr_write(BCSR_INTCLR, 0xffff);
  bcsr_write(BCSR_MASKCLR, 0xffff);
  bcsr_write(BCSR_INTSTAT, 0xffff);
  bcsr_write(BCSR_INTSET, bcsrs[BCSR_INTSET]);
  bcsr_write(BCSR_MASKSET, bcsrs[BCSR_MASKSET]);
 }


 bcsr_write(BCSR_HEXCLEAR, 0);

 return 0;
}
