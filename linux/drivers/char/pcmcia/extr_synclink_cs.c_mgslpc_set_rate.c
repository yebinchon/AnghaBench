
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MGSLPC_INFO ;


 scalar_t__ BGR ;
 scalar_t__ CCR2 ;
 int read_reg (int *,unsigned char) ;
 int write_reg (int *,unsigned char,unsigned char) ;

__attribute__((used)) static void mgslpc_set_rate(MGSLPC_INFO *info, unsigned char channel, unsigned int rate)
{
 unsigned int M, N;
 unsigned char val;





 if (rate) {
  N = 3686400 / rate;
  if (!N)
   N = 1;
  N >>= 1;
  for (M = 1; N > 64 && M < 16; M++)
   N >>= 1;
  N--;
  write_reg(info, (unsigned char) (channel + BGR),
      (unsigned char) ((M << 6) + N));
  val = read_reg(info, (unsigned char) (channel + CCR2)) & 0x3f;
  val |= ((M << 4) & 0xc0);
  write_reg(info, (unsigned char) (channel + CCR2), val);
 }
}
