
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int I8254_CMD_READBACK ;
 int I8254_PORT_CONTROL ;
 int I8254_PORT_COUNTER0 ;
 int I8254_SELECT_COUNTER0 ;
 int I8254_STATUS_NOTREADY ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static inline u16 i8254(void)
{
 u16 status, timer;

 do {
  outb(I8254_CMD_READBACK | I8254_SELECT_COUNTER0,
       I8254_PORT_CONTROL);
  status = inb(I8254_PORT_COUNTER0);
  timer = inb(I8254_PORT_COUNTER0);
  timer |= inb(I8254_PORT_COUNTER0) << 8;
 } while (status & I8254_STATUS_NOTREADY);

 return timer;
}
