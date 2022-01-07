
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t snprintf (int *,int ,char*,int) ;

__attribute__((used)) static size_t regmap_calc_reg_len(int max_val)
{
 return snprintf(((void*)0), 0, "%x", max_val);
}
