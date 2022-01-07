
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value_t ;


 int * M_values ;

__attribute__((used)) inline static value_t metafile_get_value (int temp_id) {
  return M_values ? M_values[temp_id] : 0;
}
