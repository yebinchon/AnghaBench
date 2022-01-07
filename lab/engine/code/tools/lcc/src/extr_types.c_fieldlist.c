
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_5__* Type ;
struct TYPE_10__ {TYPE_3__* sym; } ;
struct TYPE_11__ {TYPE_4__ u; } ;
struct TYPE_7__ {int flist; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef int Field ;



Field fieldlist(Type ty) {
 return ty->u.sym->u.s.flist;
}
