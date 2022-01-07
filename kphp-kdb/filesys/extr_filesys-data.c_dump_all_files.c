
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * Root ;
 int rec_dump_all_files (int *,int ) ;

void dump_all_files (void) {
  if (Root == ((void*)0)) {
    return;
  }
  rec_dump_all_files (Root, 0);
}
