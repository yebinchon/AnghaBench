
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,...) ;
 int** stat_global ;

int get_global_stats (char *buff) {
  char *s = buff;
  int i;
  buff += sprintf (buff, "GLOBAL_STAT:\n");
  for (i = 0; i < 256; i++) {
    if (stat_global[i][0] || stat_global[i][1] || stat_global[i][2]) {
      buff += sprintf (buff, "type (%d) : del %d, add %d, change %d\n", i, stat_global[i][0], stat_global[i][1], stat_global[i][2]);
    }
  }
  return buff - s;
}
