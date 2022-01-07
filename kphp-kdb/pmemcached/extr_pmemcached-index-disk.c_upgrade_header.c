
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metafile_header_old {int key_len; } ;
struct metafile_header {scalar_t__ crc32; int key_len; } ;



void upgrade_header (struct metafile_header *x) {
  x->key_len = ((struct metafile_header_old *)x)->key_len;
  x->crc32 = 0;
}
