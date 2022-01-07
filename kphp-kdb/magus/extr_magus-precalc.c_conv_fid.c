
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fid_id ;
 int fids ;
 int fids_size ;
 int* map_int_int_add (int *,int) ;
 int vector_pb (int ,int) ;

int conv_fid (int x) {
  int *y = map_int_int_add (&fid_id, x);
  if (*y == 0) {
    *y = fids_size + 1;
    vector_pb (fids, x);
  }
  return (*y) - 1;
}
