
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int Platform_numberOfFields ;
 TYPE_1__* Process_fields ;
 scalar_t__ String_eq (char const*,int ) ;

int ColumnsPanel_fieldNameToIndex(const char* name) {
   for (int j = 1; j <= Platform_numberOfFields; j++) {
      if (String_eq(name, Process_fields[j].name)) {
         return j;
      }
   }
   return -1;
}
