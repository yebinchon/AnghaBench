
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * S ;
 int do_store (int ,int ) ;
 int nrecords ;
 size_t si_new_path ;
 size_t si_old_path ;

void process_storage_img_row (void) {
  do_store (S[si_old_path], S[si_new_path]);
  nrecords++;
}
