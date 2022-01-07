
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* M_dates ;

__attribute__((used)) inline static int metafile_get_date (int temp_id) {
  return M_dates ? M_dates[temp_id] : 0;
}
