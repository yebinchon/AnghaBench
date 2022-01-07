
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CX86_CCR2 ;
 int CX86_CCR3 ;
 int CX86_DIR0 ;
 int CX86_DIR1 ;
 unsigned char getCx86 (int) ;
 int setCx86 (int,unsigned char) ;

__attribute__((used)) static void __do_cyrix_devid(unsigned char *dir0, unsigned char *dir1)
{
 unsigned char ccr2, ccr3;


 ccr3 = getCx86(CX86_CCR3);
 setCx86(CX86_CCR3, ccr3 ^ 0x80);
 getCx86(0xc0);

 if (getCx86(CX86_CCR3) == ccr3) {
  ccr2 = getCx86(CX86_CCR2);
  setCx86(CX86_CCR2, ccr2 ^ 0x04);
  getCx86(0xc0);

  if (getCx86(CX86_CCR2) == ccr2)
   *dir0 = 0xfd;
  else {
   setCx86(CX86_CCR2, ccr2);
   *dir0 = 0xfe;
  }
 } else {
  setCx86(CX86_CCR3, ccr3);


  *dir0 = getCx86(CX86_DIR0);
  *dir1 = getCx86(CX86_DIR1);
 }
}
