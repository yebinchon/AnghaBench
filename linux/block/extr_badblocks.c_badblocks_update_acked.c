
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct badblocks {int count; scalar_t__ unacked_exist; int * page; } ;


 int BB_ACK (int ) ;

__attribute__((used)) static void badblocks_update_acked(struct badblocks *bb)
{
 u64 *p = bb->page;
 int i;
 bool unacked = 0;

 if (!bb->unacked_exist)
  return;

 for (i = 0; i < bb->count ; i++) {
  if (!BB_ACK(p[i])) {
   unacked = 1;
   break;
  }
 }

 if (!unacked)
  bb->unacked_exist = 0;
}
