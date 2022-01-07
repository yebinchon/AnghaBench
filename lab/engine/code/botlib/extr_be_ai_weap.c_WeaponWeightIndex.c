
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int weightconfig_t ;
struct TYPE_5__ {int numweapons; TYPE_1__* weaponinfo; } ;
typedef TYPE_2__ weaponconfig_t ;
struct TYPE_4__ {int name; } ;


 int FindFuzzyWeight (int *,int ) ;
 scalar_t__ GetClearedMemory (int) ;

int *WeaponWeightIndex(weightconfig_t *wwc, weaponconfig_t *wc)
{
 int *index, i;


 index = (int *) GetClearedMemory(sizeof(int) * wc->numweapons);

 for (i = 0; i < wc->numweapons; i++)
 {
  index[i] = FindFuzzyWeight(wwc, wc->weaponinfo[i].name);
 }
 return index;
}
