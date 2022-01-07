
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_17__ ;


typedef TYPE_3__* Type ;
typedef TYPE_4__* Tree ;
struct TYPE_25__ {int type; } ;
struct TYPE_24__ {scalar_t__ align; scalar_t__ size; int type; } ;
struct TYPE_22__ {int loc; } ;
struct TYPE_23__ {TYPE_1__ c; } ;
struct TYPE_21__ {TYPE_2__ u; } ;
typedef int Symbol ;


 TYPE_3__* atop (TYPE_3__*) ;
 int cnsttree (int ,long) ;
 scalar_t__* file ;
 int idtree (int ) ;
 int inttype ;
 scalar_t__ isarray (TYPE_3__*) ;
 scalar_t__ lineno ;
 TYPE_17__* mkstr (scalar_t__*) ;
 int pointer (int ) ;
 TYPE_4__* retype (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* unqual (int ) ;
 TYPE_4__* vcall (int ,TYPE_3__*,TYPE_4__*,TYPE_4__*,int ,int ,int ,int ,int *) ;
 int voidptype ;

Tree nullcall(Type pty, Symbol f, Tree p, Tree e) {
 Type ty;

 if (isarray(pty))
  return retype(nullcall(atop(pty), f, p, e), pty);
 ty = unqual(unqual(p->type)->type);
 return vcall(f, pty,
  p, e,
  cnsttree(inttype, (long)ty->size),
  cnsttree(inttype, (long)ty->align),
  (file && *file ? pointer(idtree(mkstr(file)->u.c.loc)) : cnsttree(voidptype, ((void*)0))), cnsttree(inttype, (long)lineno) , ((void*)0));
}
