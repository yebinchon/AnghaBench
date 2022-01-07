
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {int tcword; int tcnt2; } ;


 int HZ ;
 int SGINT_TCSAMP_COUNTER ;
 int SGINT_TCWORD_CALL ;
 int SGINT_TCWORD_CLAT ;
 int SGINT_TCWORD_CNT2 ;
 int SGINT_TCWORD_MRGEN ;
 int SGINT_TCWORD_MSWST ;
 int read_c0_count () ;
 scalar_t__ readb (int*) ;
 TYPE_1__* sgint ;
 int writeb (int,int*) ;

__attribute__((used)) static unsigned long dosample(void)
{
 u32 ct0, ct1;
 u8 msb;


 sgint->tcword = (SGINT_TCWORD_CNT2 | SGINT_TCWORD_CALL |
    SGINT_TCWORD_MRGEN);
 sgint->tcnt2 = SGINT_TCSAMP_COUNTER & 0xff;
 sgint->tcnt2 = SGINT_TCSAMP_COUNTER >> 8;


 ct0 = read_c0_count();


 do {
  writeb(SGINT_TCWORD_CNT2 | SGINT_TCWORD_CLAT, &sgint->tcword);
  (void) readb(&sgint->tcnt2);
  msb = readb(&sgint->tcnt2);
  ct1 = read_c0_count();
 } while (msb);


 writeb(SGINT_TCWORD_CNT2 | SGINT_TCWORD_CALL | SGINT_TCWORD_MSWST,
        &sgint->tcword);






 return (ct1 - ct0) / (500000/HZ) * (500000/HZ);
}
