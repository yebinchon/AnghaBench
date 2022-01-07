
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc1_ctx {int cfc; int inter; int cfd; int compte; short* cle; } ;


 int pc1_assemble (struct pc1_ctx*) ;

__attribute__((used)) static unsigned char pc1_encrypt(struct pc1_ctx *pc1, short c)
{
 pc1_assemble(pc1);
 pc1->cfc = pc1->inter >> 8;
 pc1->cfd = pc1->inter & 255;

 for (pc1->compte = 0; pc1->compte <= 15; pc1->compte++) {

  pc1->cle[pc1->compte] = pc1->cle[pc1->compte] ^ c;
 }
 c = c ^ (pc1->cfc ^ pc1->cfd);

 return c;
}
