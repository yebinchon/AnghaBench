
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_revlist_iterator (int,int ) ;

int noindex_init (void) {
  init_revlist_iterator (-1, 0);
  return 0;
}
