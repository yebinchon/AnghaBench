
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hisi_phase {int phase_num; int* phase_degrees; int* phase_regvals; } ;


 int EINVAL ;

__attribute__((used)) static int hisi_phase_degrees_to_regval(struct clk_hisi_phase *phase,
     int degrees)
{
 int i;

 for (i = 0; i < phase->phase_num; i++)
  if (phase->phase_degrees[i] == degrees)
   return phase->phase_regvals[i];

 return -EINVAL;
}
