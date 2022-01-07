
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEV_CHANGE_FIELDMASK_DELAYED ;
 int MAX_EXTRA_MASK ;
 int alloc_log_event (int ,int,int) ;
 int change_extra_mask (int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int verbosity ;
 int write_extra_mask ;

int do_change_mask (int new_mask) {
  if (verbosity > 1) {
    fprintf (stderr, "do_change_mask(%d)\n", new_mask);
  }
  if (new_mask & ~MAX_EXTRA_MASK) {
    return -1;
  }
  if (new_mask == write_extra_mask) {
    return 0;
  }
  alloc_log_event (LEV_CHANGE_FIELDMASK_DELAYED, 8, new_mask);
  change_extra_mask (new_mask);

  return 1;
}
