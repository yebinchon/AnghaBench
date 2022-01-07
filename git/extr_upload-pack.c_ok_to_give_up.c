
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct object_array {int nr; } ;


 int COMMON_KNOWN ;
 int GENERATION_NUMBER_ZERO ;
 int THEY_HAVE ;
 int can_all_from_reach_with_flag (struct object_array*,int ,int ,int ,int ) ;
 int oldest_have ;

__attribute__((used)) static int ok_to_give_up(const struct object_array *have_obj,
    struct object_array *want_obj)
{
 uint32_t min_generation = GENERATION_NUMBER_ZERO;

 if (!have_obj->nr)
  return 0;

 return can_all_from_reach_with_flag(want_obj, THEY_HAVE,
         COMMON_KNOWN, oldest_have,
         min_generation);
}
