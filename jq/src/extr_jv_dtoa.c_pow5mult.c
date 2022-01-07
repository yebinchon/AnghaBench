
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct dtoa_context {TYPE_1__* p5s; } ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_1__ Bigint ;


 int Bfree (struct dtoa_context*,TYPE_1__*) ;
 TYPE_1__* i2b (struct dtoa_context*,int) ;
 void* mult (struct dtoa_context*,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* multadd (struct dtoa_context*,TYPE_1__*,int const,int ) ;

__attribute__((used)) static Bigint *
pow5mult
 (struct dtoa_context* C, Bigint *b, int k)
{
 Bigint *b1, *p5, *p51;
 int i;
 static const int p05[3] = { 5, 25, 125 };

 if ((i = k & 3))
  b = multadd(C, b, p05[i-1], 0);

 if (!(k >>= 2))
  return b;
 if (!(p5 = C->p5s)) {

  p5 = C->p5s = i2b(C, 625);
  p5->next = 0;
  }
 for(;;) {
  if (k & 1) {
   b1 = mult(C, b, p5);
   Bfree(C, b);
   b = b1;
   }
  if (!(k >>= 1))
   break;
  if (!(p51 = p5->next)) {
   p51 = p5->next = mult(C, p5,p5);
   p51->next = 0;
   }
  p5 = p51;
  }
 return b;
 }
