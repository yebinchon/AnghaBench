
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ defined; } ;
typedef TYPE_1__* Symbol ;


 int EXTERN ;
 int GLOBAL ;
 int STATIC ;
 TYPE_1__* afunc ;
 int array (int ,int,int ) ;
 int ftype (int ,int ) ;
 TYPE_1__* genident (int ,int ,int ) ;
 int idtree (TYPE_1__*) ;
 int inttype ;
 TYPE_1__* mksymbol (int ,char*,int ) ;
 int pointer (int ) ;
 int vcall (TYPE_1__*,int ,int ,int ,int *) ;
 int voidptype ;
 int voidtype ;
 int walk (int ,int ,int ) ;

__attribute__((used)) static void bbentry(Symbol yylink, Symbol f) {
 static Symbol prologue;

 afunc = genident(STATIC, array(voidptype, 4, 0), GLOBAL);
 if (prologue == 0) {
  prologue = mksymbol(EXTERN, "_prologue", ftype(inttype, voidptype));
  prologue->defined = 0;
 }
 walk(vcall(prologue, voidtype, pointer(idtree(afunc)), pointer(idtree(yylink)), ((void*)0)), 0, 0);

}
