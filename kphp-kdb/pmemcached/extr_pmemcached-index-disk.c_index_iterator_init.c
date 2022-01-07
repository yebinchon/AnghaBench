
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int index_iterator_next () ;
 int index_iterator_next_meta () ;
 int iterator_metafile_number ;

void index_iterator_init () {
  iterator_metafile_number = -1;
  index_iterator_next_meta ();
  index_iterator_next ();
}
