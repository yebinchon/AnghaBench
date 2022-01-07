
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int uahash; int ip; int id; } ;
struct TYPE_7__ {int type; int str; TYPE_1__ p; } ;
typedef TYPE_2__ lev_antispam_add_pattern_v1_t ;
typedef int flags_t ;
struct TYPE_8__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_3__ antispam_pattern_t ;


 int FLAGS_SIMPLIFY_FULL ;
 int FLAGS_SIMPLIFY_PARTIAL ;
 int SIMPLIFY_TYPE_FULL ;
 int SIMPLIFY_TYPE_PARTIAL ;
 int add_pattern (TYPE_3__,int,int ,int,char*) ;

__attribute__((used)) static bool add_pattern_v1 (lev_antispam_add_pattern_v1_t* E, bool replace) {
  flags_t flags = 0;
  E->p.flags &= 3;
  if (E->p.flags == SIMPLIFY_TYPE_PARTIAL) {
    flags |= FLAGS_SIMPLIFY_PARTIAL;
  } else if (E->p.flags == SIMPLIFY_TYPE_FULL) {
    flags |= FLAGS_SIMPLIFY_FULL;
  }
  antispam_pattern_t pattern = {E->p.id, E->p.ip, E->p.uahash, flags};
  return add_pattern (pattern, (E->type & 0xFFFF), E->str, replace, "v1");
}
