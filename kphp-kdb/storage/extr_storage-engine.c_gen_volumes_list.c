
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int volume_id; } ;


 int VALUE_BUFF_SIZE ;
 TYPE_1__** Volumes ;
 int snprintf (char*,int,char*,int ) ;
 char* value_buff ;
 int volumes ;

int gen_volumes_list (void) {
  int i = 0;
  char *p = value_buff;
  for (i = 0; i < volumes; i++) {
    int o = value_buff + VALUE_BUFF_SIZE - p;
    if (o <= 0) {
      return -1;
    }
    int l = snprintf (p, o, i ? ",%lld" : "%lld", Volumes[i]->volume_id);
    if (l >= o) {
      return -2;
    }
    p += l;
  }
  return p - value_buff;
}
