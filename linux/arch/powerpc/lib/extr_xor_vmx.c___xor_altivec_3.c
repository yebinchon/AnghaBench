
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unative_t ;


 int DEFINE (int) ;
 int LOAD (int) ;
 int STORE (int) ;
 int XOR (int,int) ;
 int v1 ;
 int v2 ;
 int v3 ;

void __xor_altivec_3(unsigned long bytes, unsigned long *v1_in,
       unsigned long *v2_in, unsigned long *v3_in)
{
 DEFINE(v1);
 DEFINE(v2);
 DEFINE(v3);
 unsigned long lines = bytes / (sizeof(unative_t)) / 4;

 do {
  LOAD(v1);
  LOAD(v2);
  LOAD(v3);
  XOR(v1, v2);
  XOR(v1, v3);
  STORE(v1);

  v1 += 4;
  v2 += 4;
  v3 += 4;
 } while (--lines > 0);
}
