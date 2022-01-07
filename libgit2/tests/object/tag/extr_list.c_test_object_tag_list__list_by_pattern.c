
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pattern; } ;


 int ensure_tag_pattern_match (int ,TYPE_1__*) ;
 int g_repo ;
 TYPE_1__* matches ;

void test_object_tag_list__list_by_pattern(void)
{

 size_t i = 0;
 while (matches[i].pattern)
  ensure_tag_pattern_match(g_repo, &matches[i++]);
}
