
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int st_printf (char*) ;
 int verbosity ;

void mt_test (void) {
  if (verbosity >= 2) {
    st_printf ("$3mt_test disabled$^ (should be compiled with -D\"ST_MEMTEST_ENABLED\")\n");
  }
}
