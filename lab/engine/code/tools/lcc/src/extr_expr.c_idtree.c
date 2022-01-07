
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int Type ;
typedef TYPE_3__* Tree ;
struct TYPE_13__ {TYPE_4__* alias; } ;
struct TYPE_16__ {scalar_t__ scope; scalar_t__ sclass; scalar_t__ type; int ref; TYPE_1__ u; } ;
struct TYPE_14__ {TYPE_4__* sym; } ;
struct TYPE_15__ {int type; TYPE_2__ u; } ;
struct TYPE_12__ {int wants_argb; } ;
typedef TYPE_4__* Symbol ;


 int ADDRF ;
 int ADDRG ;
 int ADDRL ;
 scalar_t__ EXTERN ;
 scalar_t__ GLOBAL ;
 TYPE_11__* IR ;
 scalar_t__ PARAM ;
 scalar_t__ STATIC ;
 int assert (TYPE_4__*) ;
 int funcptype ;
 scalar_t__ isarray (int ) ;
 scalar_t__ isfunc (int ) ;
 scalar_t__ isptr (int ) ;
 scalar_t__ isstruct (scalar_t__) ;
 int mkop (int,int ) ;
 scalar_t__ ptr (scalar_t__) ;
 scalar_t__ refinc ;
 TYPE_3__* rvalue (TYPE_3__*) ;
 TYPE_3__* tree (int ,scalar_t__,int *,int *) ;
 int unqual (scalar_t__) ;
 int voidptype ;

Tree idtree(Symbol p) {
 int op;
 Tree e;
 Type ty = p->type ? unqual(p->type) : voidptype;

 if (p->scope == GLOBAL || p->sclass == STATIC)
  op = ADDRG;
 else if (p->scope == PARAM) {
  op = ADDRF;
  if (isstruct(p->type) && !IR->wants_argb)
   {
    e = tree(mkop(op,voidptype), ptr(ptr(p->type)), ((void*)0), ((void*)0));
    e->u.sym = p;
    return rvalue(rvalue(e));
   }
 } else if (p->sclass == EXTERN) {
  assert(p->u.alias);
  p = p->u.alias;
  op = ADDRG;
 } else
  op = ADDRL;
 p->ref += refinc;
 if (isarray(ty))
  e = tree(mkop(op,voidptype), p->type, ((void*)0), ((void*)0));
 else if (isfunc(ty))
  e = tree(mkop(op,funcptype), p->type, ((void*)0), ((void*)0));
 else
  e = tree(mkop(op,voidptype), ptr(p->type), ((void*)0), ((void*)0));
 e->u.sym = p;
 if (isptr(e->type))
  e = rvalue(e);
 return e;
}
