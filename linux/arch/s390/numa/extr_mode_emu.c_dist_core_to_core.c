
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct toptree {int dummy; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_4__ {scalar_t__ id; } ;


 int DIST_BOOK ;
 int DIST_CORE ;
 int DIST_DRAWER ;
 int DIST_MC ;
 TYPE_3__* core_book (struct toptree*) ;
 TYPE_2__* core_drawer (struct toptree*) ;
 TYPE_1__* core_mc (struct toptree*) ;

__attribute__((used)) static int dist_core_to_core(struct toptree *core1, struct toptree *core2)
{
 if (core_drawer(core1)->id != core_drawer(core2)->id)
  return DIST_DRAWER;
 if (core_book(core1)->id != core_book(core2)->id)
  return DIST_BOOK;
 if (core_mc(core1)->id != core_mc(core2)->id)
  return DIST_MC;

 return DIST_CORE;
}
