
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct openpic {int gcr; int mpic_mode_mask; } ;


 int GCR_RESET ;
 int openpic_reset (struct openpic*) ;

__attribute__((used)) static void openpic_gcr_write(struct openpic *opp, uint64_t val)
{
 if (val & GCR_RESET) {
  openpic_reset(opp);
  return;
 }

 opp->gcr &= ~opp->mpic_mode_mask;
 opp->gcr |= val & opp->mpic_mode_mask;
}
