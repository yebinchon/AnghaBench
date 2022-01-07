
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cache_set_size_short {int size; scalar_t__ data; } ;


 int a2hex (unsigned char*,int,char*) ;
 scalar_t__ dump_line_header (char*) ;
 int filtered_uri_short_md5 ;
 int fprintf (int ,char*,char*,int) ;
 int out ;
 int strncmp (char*,int ,int) ;

void cache_set_size_short (struct lev_cache_set_size_short *E) {
  char output[33];
  a2hex ((unsigned char *) E->data, 8, output);
  if (!strncmp (output, filtered_uri_short_md5, 16)) {
    if (dump_line_header ("LEV_CACHE_SET_SIZE_SHORT")) {
      fprintf (out, "\t%s\t%d\n", output, E->size);
    }
  }
}
