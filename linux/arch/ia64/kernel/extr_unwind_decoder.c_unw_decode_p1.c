
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1 ;
 int UNW_DEC_BR_MEM (int ,unsigned char,void*) ;

__attribute__((used)) static unsigned char *
unw_decode_p1 (unsigned char *dp, unsigned char code, void *arg)
{
  unsigned char brmask = (code & 0x1f);

  UNW_DEC_BR_MEM(P1, brmask, arg);
  return dp;
}
