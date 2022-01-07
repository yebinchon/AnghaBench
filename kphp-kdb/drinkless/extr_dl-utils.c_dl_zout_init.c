
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dl_zout ;


 int dl_zout_raw_init (int *) ;
 int dl_zout_set_buffer_len (int *,int) ;
 int dl_zout_set_crc32_flag (int *,int) ;
 int dl_zout_set_file_id (int *,int) ;

void dl_zout_init (dl_zout *f, int id, int len) {
  dl_zout_raw_init (f);

  dl_zout_set_file_id (f, id);
  dl_zout_set_buffer_len (f, len);
  dl_zout_set_crc32_flag (f, 1);
}
