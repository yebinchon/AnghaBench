
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ES ;
 int MAX_EXTRA_INTS ;
 int* SE ;
 int current_extra_mask ;
 int extra_ints_num ;
 int final_extra_mask ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;
 int text_shift ;
 int unpack_extra_mask (int) ;
 scalar_t__ verbosity ;

void prepare_extra_mask (void) {
  int i, unpacked_mask;
  final_extra_mask = current_extra_mask;
  extra_ints_num = 0;

  unpacked_mask = unpack_extra_mask (final_extra_mask);
  for (i = 0; i < MAX_EXTRA_INTS; i++) {
    SE[i] = ES[i] = -1;
    if (unpacked_mask & (1 << i)) {
      SE[i] = extra_ints_num;
      ES[extra_ints_num++] = i;
    }
  }
  text_shift = extra_ints_num * 4;
  if (verbosity > 0) {
    fprintf (stderr, "extra_mask=%08x, extra_ints=%d\n", final_extra_mask, extra_ints_num);
  }
}
