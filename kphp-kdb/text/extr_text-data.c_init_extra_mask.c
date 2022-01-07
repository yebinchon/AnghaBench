
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_EXTRA_MASK ;
 int assert (int) ;
 int extra_ints ;
 int extra_mask_intcount (int) ;
 int incore_messages ;
 int index_extra_mask ;
 int read_extra_mask ;
 int text_shift ;
 int tree_nodes ;
 int write_extra_mask ;

__attribute__((used)) static void init_extra_mask (int value) {
  assert (!index_extra_mask && !tree_nodes && !incore_messages);
  index_extra_mask = read_extra_mask = write_extra_mask = value;
  assert (!(index_extra_mask & ~MAX_EXTRA_MASK));
  extra_ints = extra_mask_intcount (index_extra_mask);
  text_shift = extra_ints * 4;
}
