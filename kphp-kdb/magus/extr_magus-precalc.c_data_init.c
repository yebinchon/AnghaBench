
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fid_id ;
 int fid_name_id ;
 int fids ;
 int map_int_int_init (int *) ;
 int map_string_int_init (int *) ;
 int scores ;
 int users ;
 int vector_init (int ) ;

void data_init (void) {
  map_string_int_init (&fid_name_id);

  map_int_int_init (&fid_id);
  vector_init (fids);

  vector_init (scores);
  vector_init (users);
}
