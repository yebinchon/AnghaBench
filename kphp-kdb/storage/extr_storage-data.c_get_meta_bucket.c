
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; } ;
typedef TYPE_1__ metafile_t ;


 scalar_t__ meta_header_size ;

__attribute__((used)) static int get_meta_bucket (metafile_t *meta) {
  int r = 0;
  if (meta->size > 65536 + meta_header_size) {
    r++;
  }
  return r;
}
