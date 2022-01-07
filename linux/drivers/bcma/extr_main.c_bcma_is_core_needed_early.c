
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;





__attribute__((used)) static bool bcma_is_core_needed_early(u16 core_id)
{
 switch (core_id) {
 case 129:
 case 128:
  return 1;
 }

 return 0;
}
