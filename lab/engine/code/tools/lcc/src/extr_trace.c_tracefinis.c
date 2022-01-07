
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_3__* Tree ;
struct TYPE_11__ {TYPE_4__* loc; } ;
struct TYPE_12__ {TYPE_1__ c; } ;
struct TYPE_14__ {int type; TYPE_2__ u; } ;
struct TYPE_13__ {struct TYPE_13__** kids; } ;
typedef TYPE_4__* Symbol ;


 scalar_t__ ARG ;
 scalar_t__ P ;
 TYPE_3__* args ;
 int calltree (int ,int ,TYPE_3__*,int *) ;
 int charptype ;
 int fmt ;
 scalar_t__* fmtend ;
 scalar_t__* fp ;
 int freturn (int ) ;
 int idtree (TYPE_4__*) ;
 TYPE_4__* mkstr (int ) ;
 int pointer (int ) ;
 int string (int ) ;
 TYPE_3__* tree (scalar_t__,int ,int ,int ) ;
 int walk (int ,int ,int ) ;

__attribute__((used)) static void tracefinis(Symbol printer) {
 Tree *ap;
 Symbol p;

 *fp = 0;
 p = mkstr(string(fmt));
 for (ap = &args; *ap; ap = &(*ap)->kids[1])
  ;
 *ap = tree(ARG+P, charptype, pointer(idtree(p->u.c.loc)), 0);
 walk(calltree(pointer(idtree(printer)), freturn(printer->type), args, ((void*)0)), 0, 0);
 args = 0;
 fp = fmtend = 0;
}
