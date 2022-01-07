
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* header; } ;
struct TYPE_3__ {scalar_t__ nrecords; } ;


 scalar_t__ index_iterator ;
 int index_iterator_next_meta () ;
 size_t iterator_metafile_number ;
 scalar_t__ iterator_metafile_position ;
 scalar_t__ metafile_get_entry (size_t,int ) ;
 size_t metafile_number ;
 TYPE_2__* metafiles ;

void index_iterator_next () {
  while (iterator_metafile_number != metafile_number && iterator_metafile_position == metafiles[iterator_metafile_number].header->nrecords) {
    index_iterator_next_meta ();
  }
  if (iterator_metafile_number != metafile_number && iterator_metafile_position < metafiles[iterator_metafile_number].header->nrecords) {
    index_iterator = metafile_get_entry ( iterator_metafile_number, iterator_metafile_position++);
  } else {
    index_iterator = 0;
  }
}
