
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TRIMMER_SET_CMD ;
 unsigned int TRIMMER_SHIFT ;
 unsigned int TRIMMER_VALUE_MASK ;
 int rtc_end_op () ;
 int rtc_init_op () ;
 int rtc_write_byte (unsigned int) ;

void ds1603_set_trimmer(unsigned int trimval)
{
 rtc_init_op();
 rtc_write_byte(((trimval << TRIMMER_SHIFT) & TRIMMER_VALUE_MASK)
   | (TRIMMER_SET_CMD));
 rtc_end_op();
}
