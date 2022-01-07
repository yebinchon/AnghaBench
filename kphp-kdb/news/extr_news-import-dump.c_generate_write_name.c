
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_write_name ;
 int log_split_mod ;
 char* name_pattern ;
 int sprintf (int ,char*,char*,int) ;

void generate_write_name (int i) {
  int z = 2;
  if (log_split_mod > 100) {
    z = 3;
  }
  if (log_split_mod > 1000) {
    z = 4;
  }
  if (z == 2) {
    sprintf (cur_write_name, "%s%02d.bin", name_pattern, i);
  } else if (z == 3) {
    sprintf (cur_write_name, "%s%03d.bin", name_pattern, i);
  } else if (z == 4) {
    sprintf (cur_write_name, "%s%04d.bin", name_pattern, i);
  }
}
