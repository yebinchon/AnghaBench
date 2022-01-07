
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int str; int pattern; } ;
typedef TYPE_1__ lev_antispam_add_pattern_v2_t ;


 int add_pattern (int ,int,int ,int,char*) ;

__attribute__((used)) static bool add_pattern_v2 (lev_antispam_add_pattern_v2_t* E, bool replace) {
  return add_pattern (E->pattern, (E->type & 0xFFFF), E->str, replace, "v2");
}
