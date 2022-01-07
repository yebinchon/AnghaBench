
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* M_flags ;
 int* M_flags_small ;

__attribute__((used)) inline static int metafile_get_flags (int temp_id) {
  return M_flags ? M_flags[temp_id] : M_flags_small[temp_id];
}
