
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_METAFILES ;
 int add_use (int) ;
 int assert (int) ;
 int del_use (int) ;

void renew_use (int metafile_number) {
  assert (0 <= metafile_number && metafile_number < MAX_METAFILES);
  del_use (metafile_number);
  add_use (metafile_number);
}
