
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dyn_mark_t ;


 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 int find_diff (unsigned char*,int,unsigned char*,int,unsigned char*,int,int,double) ;

int vk_diff (unsigned char *old_buff, int old_buff_size, unsigned char *new_buff, int new_buff_size, unsigned char *patch_buff, int patch_buff_size, int compress_level, double timeout) {
  dyn_mark_t mrk;
  dyn_mark (mrk);
  int r = find_diff (old_buff, old_buff_size, new_buff, new_buff_size, patch_buff, patch_buff_size, compress_level, timeout);
  dyn_release (mrk);
  return r;
}
