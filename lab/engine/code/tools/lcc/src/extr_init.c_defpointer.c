
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Value ;
struct TYPE_8__ {int (* defconst ) (int ,int ,int ) ;int (* defaddress ) (TYPE_1__*) ;} ;
struct TYPE_7__ {int size; } ;
struct TYPE_6__ {int ref; } ;
typedef TYPE_1__* Symbol ;


 TYPE_5__* IR ;
 int P ;
 int stub1 (TYPE_1__*) ;
 int stub2 (int ,int ,int ) ;
 TYPE_2__* voidptype ;

void defpointer(Symbol p) {
 if (p) {
  (*IR->defaddress)(p);
  p->ref++;
 } else {
  static Value v;
  (*IR->defconst)(P, voidptype->size, v);
 }
}
