
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disabled; } ;
typedef TYPE_1__ host_t ;


 TYPE_1__* get_host_by_random_tag (unsigned long long,int ) ;

int set_enable (unsigned long long random_tag, int enable) {
  host_t *H = get_host_by_random_tag (random_tag, 0);
  if (H == ((void*)0)) {
    return -1;
  }
  int disabled = enable ? 0 : 1;
  if (H->disabled == disabled) {
    return 1;
  }
  H->disabled = disabled;
  return 0;
}
