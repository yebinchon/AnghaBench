
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int out_be32 (scalar_t__,int ) ;
 scalar_t__ socrates_fpga_pic_iobase ;

__attribute__((used)) static inline void socrates_fpga_pic_write(int reg, uint32_t val)
{
 out_be32(socrates_fpga_pic_iobase + reg, val);
}
