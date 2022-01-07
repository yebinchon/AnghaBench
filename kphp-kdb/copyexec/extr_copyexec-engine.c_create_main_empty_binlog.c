
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_main_transaction_skip {int first_transaction_id; int type; } ;
typedef int E ;


 int COPYEXEC_MAIN_SCHEMA_V1 ;
 int LEV_COPYEXEC_MAIN_TRANSACTION_SKIP ;
 int empty_binlog_volume_name ;
 int exit (int) ;
 int find_last_synchronization_point () ;
 int get_random_bytes (int*,int) ;
 int instance_mask ;
 int kprintf (char*,int const) ;
 int make_empty_binlog (char*,int ,int ,int*,int,void*,int) ;

__attribute__((used)) static void create_main_empty_binlog (char *binlog_name) {
  void *extra = ((void*)0);
  int extra_len = 0;
  struct lev_copyexec_main_transaction_skip E;

  int lev_start_extra[3];
  lev_start_extra[2] = instance_mask;

  int r = get_random_bytes (lev_start_extra, 8);
  if (r != 8) {
    kprintf ("random_tag creation failed, get_random_bytes returns %d instead of 8.\n", r);
    exit (1);
  }

  const int sp = find_last_synchronization_point ();
  if (sp) {
    kprintf ("Last synchronization point transaction id is %d.\n", sp);
    E.type = LEV_COPYEXEC_MAIN_TRANSACTION_SKIP;
    E.first_transaction_id = sp + 1;
    extra = &E;
    extra_len = sizeof (E);
  }

  make_empty_binlog (binlog_name, empty_binlog_volume_name, COPYEXEC_MAIN_SCHEMA_V1, lev_start_extra, 12, extra, extra_len);

}
