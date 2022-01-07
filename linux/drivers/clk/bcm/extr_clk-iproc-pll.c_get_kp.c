
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kp_band { ____Placeholder_kp_band } kp_band ;


 int EINVAL ;
 int NUM_FREQ_BANDS ;
 int** kp_table ;
 unsigned long** ref_freq_table ;

__attribute__((used)) static int get_kp(unsigned long ref_freq, enum kp_band kp_index)
{
 int i;

 if (ref_freq < ref_freq_table[0][0])
  return -EINVAL;

 for (i = 0; i < NUM_FREQ_BANDS; i++) {
  if (ref_freq >= ref_freq_table[i][0] &&
      ref_freq < ref_freq_table[i][1])
   return kp_table[kp_index][i];
 }
 return -EINVAL;
}
