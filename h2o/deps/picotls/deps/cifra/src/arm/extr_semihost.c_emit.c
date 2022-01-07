
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_WRITE0 ;
 int semihost (int ,void volatile*) ;

void emit(const char *buf)
{
  semihost(OP_WRITE0, (volatile void *) buf);
}
