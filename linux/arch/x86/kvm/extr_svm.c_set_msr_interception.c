
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;


 int BUG_ON (int) ;
 size_t MSR_INVALID ;
 int WARN_ON (int) ;
 int clear_bit (int,unsigned long*) ;
 int set_bit (int,unsigned long*) ;
 size_t svm_msrpm_offset (unsigned int) ;
 int valid_msr_intercept (unsigned int) ;

__attribute__((used)) static void set_msr_interception(u32 *msrpm, unsigned msr,
     int read, int write)
{
 u8 bit_read, bit_write;
 unsigned long tmp;
 u32 offset;





 WARN_ON(!valid_msr_intercept(msr));

 offset = svm_msrpm_offset(msr);
 bit_read = 2 * (msr & 0x0f);
 bit_write = 2 * (msr & 0x0f) + 1;
 tmp = msrpm[offset];

 BUG_ON(offset == MSR_INVALID);

 read ? clear_bit(bit_read, &tmp) : set_bit(bit_read, &tmp);
 write ? clear_bit(bit_write, &tmp) : set_bit(bit_write, &tmp);

 msrpm[offset] = tmp;
}
