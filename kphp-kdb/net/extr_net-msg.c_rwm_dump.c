
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {scalar_t__ magic; int total_bytes; } ;


 scalar_t__ RM_INIT_MAGIC ;
 scalar_t__ RM_TMP_MAGIC ;
 int assert (int) ;
 int fprintf (int ,char*,int) ;
 int hexdump (char*,char*) ;
 int rwm_clone (struct raw_message*,struct raw_message*) ;
 int rwm_fetch_data (struct raw_message*,char*,int) ;
 int rwm_free (struct raw_message*) ;
 int stderr ;

int rwm_dump (struct raw_message *raw) {
  assert (raw->magic == RM_INIT_MAGIC || raw->magic == RM_TMP_MAGIC);
  struct raw_message t;
  rwm_clone (&t, raw);
  static char R[10004];
  int r = rwm_fetch_data (&t, R, 10004);
  int x = (r > 10000) ? 10000 : r;
  hexdump (R, R + x);
  if (r > x) {
    fprintf (stderr, "%d bytes not printed\n", raw->total_bytes - x);
  }
  rwm_free (&t);
  return 0;
}
