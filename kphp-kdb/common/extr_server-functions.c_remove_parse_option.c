
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ val; scalar_t__ name; } ;


 int find_parse_option (int) ;
 TYPE_1__* global_longopts ;
 char** global_longopts_help ;
 int memset (TYPE_1__*,int ,int) ;
 int* removed_options ;

void remove_parse_option (int val) {
  int t = find_parse_option (val);
  int s = 0;
  while (global_longopts[s].name || global_longopts[s].val) { s ++; }
  if (val >= 0 && val <= 127) {
    removed_options[val / 32] |= 1 << (val & 31);
  }

  if (t >= 0) {
    while (t + 1 != s) {
      global_longopts[t] = global_longopts[t + 1];
      global_longopts_help[t] = global_longopts_help[t + 1];
      t++;
    }
    memset (&global_longopts[s - 1], 0, sizeof (*global_longopts));
    char *x;
    x = global_longopts_help[t];
    global_longopts_help[t] = global_longopts_help[s - 1];
    global_longopts_help[s - 1] = x;
  }
}
