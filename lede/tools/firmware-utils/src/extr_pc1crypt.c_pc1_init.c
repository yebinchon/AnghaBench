
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc1_ctx {int cle; } ;


 int memset (struct pc1_ctx*,int ,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void pc1_init(struct pc1_ctx *pc1)
{
 memset(pc1, 0, sizeof(struct pc1_ctx));


 strcpy(pc1->cle, "Remsaalps!123456");
}
