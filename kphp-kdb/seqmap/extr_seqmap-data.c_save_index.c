
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int vkprintf (int ,char*) ;

int save_index (int writing_binlog) {
  vkprintf (0, "index not implemented\n");
  assert (0);
  return 0;
}
