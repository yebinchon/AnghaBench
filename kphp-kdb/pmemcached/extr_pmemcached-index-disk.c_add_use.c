
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_METAFILES ;
 int assert (int) ;
 size_t* next_use ;
 int* prev_use ;

void add_use (int metafile_number) {
  assert (0 <= metafile_number && metafile_number < MAX_METAFILES);
  prev_use[metafile_number] = MAX_METAFILES;
  next_use[metafile_number] = next_use[MAX_METAFILES];
  next_use[MAX_METAFILES] = metafile_number;
  prev_use[next_use[metafile_number]] = metafile_number;
}
