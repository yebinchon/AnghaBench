
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topa {int last; } ;


 int PT_CAP_topa_multiple_entries ;
 int TENTS_PER_PAGE ;
 int intel_pt_validate_hw_cap (int ) ;

__attribute__((used)) static bool topa_table_full(struct topa *topa)
{

 if (!intel_pt_validate_hw_cap(PT_CAP_topa_multiple_entries))
  return !!topa->last;

 return topa->last == TENTS_PER_PAGE - 1;
}
