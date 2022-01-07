
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_entry {int dummy; } ;
struct TYPE_2__ {size_t* local_offsets; int * data; } ;


 TYPE_1__* metafiles ;

inline struct index_entry* metafile_get_entry ( int metafile, int idx ) {
  return (struct index_entry *)&metafiles[metafile].data[metafiles[metafile].local_offsets[idx]];
}
