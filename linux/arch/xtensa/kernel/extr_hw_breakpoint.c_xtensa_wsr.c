
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BUILD_BUG_ON (int) ;
 int SREG_DBREAKA ;
 int SREG_DBREAKC ;
 int SREG_IBREAKA ;
 int XCHAL_NUM_DBREAK ;
 int XCHAL_NUM_IBREAK ;
 int xtensa_set_sr (unsigned long,int ) ;

__attribute__((used)) static void xtensa_wsr(unsigned long v, u8 sr)
{





 BUILD_BUG_ON(XCHAL_NUM_IBREAK > 2);
 BUILD_BUG_ON(XCHAL_NUM_DBREAK > 2);

 switch (sr) {
 }
}
