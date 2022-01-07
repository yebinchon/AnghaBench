
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int (* defaddress ) (int ) ;int (* stabsym ) (int ) ;int (* emit ) (int ) ;int (* stabline ) (int *) ;int (* stabblock ) (char,scalar_t__,int ) ;} ;
struct TYPE_13__ {TYPE_5__* next; } ;
struct TYPE_10__ {int size; long* values; int * labels; int deflab; int table; } ;
struct TYPE_9__ {int src; } ;
struct TYPE_8__ {int locals; scalar_t__ level; int types; int identifiers; } ;
struct TYPE_11__ {TYPE_3__ swtch; int var; int forest; TYPE_2__ point; TYPE_1__ block; TYPE_5__* begin; } ;
struct TYPE_12__ {int kind; TYPE_4__ u; struct TYPE_12__* next; } ;
typedef int Coordinate ;
typedef TYPE_5__* Code ;





 int CODE ;


 TYPE_7__* IR ;

 int LIT ;
 scalar_t__ LOCAL ;
 long LONG_MAX ;



 int assert (int ) ;
 TYPE_6__ codehead ;
 int defglobal (int ,int ) ;
 int equated (int ) ;
 scalar_t__ errcnt ;
 int foreach (int ,scalar_t__,int ,int *) ;
 int glevel ;
 int src ;
 int stub1 (char,scalar_t__,int ) ;
 int stub2 (char,scalar_t__,int ) ;
 int stub3 (int *) ;
 int stub4 (int ) ;
 int stub5 (int ) ;
 int stub6 (int ) ;
 int stub7 (int ) ;
 int stub8 (int ) ;
 int swtoseg (int ) ;
 int typestab ;

void emitcode(void) {
 Code cp;
 Coordinate save;

 save = src;
 cp = codehead.next;
 for ( ; errcnt <= 0 && cp; cp = cp->next)
  switch (cp->kind) {
  case 136: break;
  case 135: if (glevel && IR->stabblock) {
           (*IR->stabblock)('{', cp->u.block.level - LOCAL, cp->u.block.locals);
           swtoseg(CODE);
          }
 break;
  case 134: if (glevel && IR->stabblock) {
           Code bp = cp->u.begin;
           foreach(bp->u.block.identifiers, bp->u.block.level, typestab, ((void*)0));
           foreach(bp->u.block.types, bp->u.block.level, typestab, ((void*)0));
           (*IR->stabblock)('}', bp->u.block.level - LOCAL, bp->u.block.locals);
           swtoseg(CODE);
          }
 break;
  case 133: src = cp->u.point.src;
          if (glevel > 0 && IR->stabline) {
           (*IR->stabline)(&cp->u.point.src); swtoseg(CODE); } break;
  case 132: case 131:
  case 130: if (cp->u.forest)
           (*IR->emit)(cp->u.forest); break;
  case 129: if (glevel && IR->stabsym) {
           (*IR->stabsym)(cp->u.var);
           swtoseg(CODE);
          } break;
  case 128: { int i;
           defglobal(cp->u.swtch.table, LIT);
           (*IR->defaddress)(equated(cp->u.swtch.labels[0]));
           for (i = 1; i < cp->u.swtch.size; i++) {
            long k = cp->u.swtch.values[i-1];
            while (++k < cp->u.swtch.values[i])
             assert(k < LONG_MAX),
             (*IR->defaddress)(equated(cp->u.swtch.deflab));
            (*IR->defaddress)(equated(cp->u.swtch.labels[i]));
           }
           swtoseg(CODE);
          } break;
  default: assert(0);
  }
 src = save;
}
