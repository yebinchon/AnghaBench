
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sz ;
struct connection {int Tmp; } ;


 int read_in (int ,int*,int) ;
 int* value_buff ;

int parse_path (struct connection *c) {
  int sz;
  if (read_in (c->Tmp, &sz, sizeof (sz)) != sizeof (sz)) {
    return -1;
  }
  if (read_in (c->Tmp, value_buff, sz) != sz) {
    return -2;
  }
  value_buff[sz] = 0;
  return 0;
}
