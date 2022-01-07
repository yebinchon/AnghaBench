
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpets {unsigned long hp_tick_freq; } ;


 unsigned long div64_ul (unsigned long long,unsigned long) ;

__attribute__((used)) static inline unsigned long hpet_time_div(struct hpets *hpets,
       unsigned long dis)
{
 unsigned long long m;

 m = hpets->hp_tick_freq + (dis >> 1);
 return div64_ul(m, dis);
}
