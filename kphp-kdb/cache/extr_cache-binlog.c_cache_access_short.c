
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cache_access_short {int data; } ;


 int a2hex (int ,int,char*) ;
 scalar_t__ dump_line_header (char*) ;
 int filtered_uri_short_md5 ;
 int fprintf (int ,char*,int,char*) ;
 int out ;
 int strncmp (char*,int ,int) ;

__attribute__((used)) static void cache_access_short (struct lev_cache_access_short *E, int t) {
  char output[33];
  a2hex (E->data, 8, output);
  if (!strncmp (output, filtered_uri_short_md5, 16)) {
    if (dump_line_header ("LEV_CACHE_ACCESS_SHORT")) {
      fprintf (out, "+%d\t%s\n", t, output);
    }
  }
}
