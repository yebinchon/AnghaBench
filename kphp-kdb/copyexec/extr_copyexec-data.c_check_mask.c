
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MASK_IMPORTANT_TRANSACTION ;
 int MASK_RERUN_TRANSACTION ;
 int MASK_WAITING_TRANSACTION ;

int check_mask (int mask) {
  return ((mask & (MASK_RERUN_TRANSACTION | MASK_IMPORTANT_TRANSACTION | MASK_WAITING_TRANSACTION)) == 0);
}
