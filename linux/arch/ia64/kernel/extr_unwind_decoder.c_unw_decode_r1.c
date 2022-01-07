
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char unw_word ;


 int R1 ;
 int UNW_DEC_PROLOGUE (int ,int,unsigned char,void*) ;

__attribute__((used)) static unsigned char *
unw_decode_r1 (unsigned char *dp, unsigned char code, void *arg)
{
  int body = (code & 0x20) != 0;
  unw_word rlen;

  rlen = (code & 0x1f);
  UNW_DEC_PROLOGUE(R1, body, rlen, arg);
  return dp;
}
