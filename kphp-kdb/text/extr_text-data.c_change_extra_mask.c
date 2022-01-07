
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_EXTRA_MASK ;
 int assert (int) ;
 int read_extra_mask ;
 int write_extra_mask ;

__attribute__((used)) static void change_extra_mask (int value) {
  assert (!(value & ~MAX_EXTRA_MASK));
  read_extra_mask &= write_extra_mask = value;
}
