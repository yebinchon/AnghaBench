
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fid_id ;
 int fid_name_id ;
 int fids ;
 int map_int_int_free (int *) ;
 int map_string_int_free (int *) ;
 int scores ;
 int users ;
 int vector_free (int ) ;

void data_free (void) {
  map_string_int_free (&fid_name_id);

  map_int_int_free (&fid_id);
  vector_free (fids);

  vector_free (scores);
  vector_free (users);
}
