
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transaction_t ;


 int PATH_MAX ;
 int assert (int) ;
 int get_transaction_dir (int *,char*) ;
 int get_transaction_hash (int *,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static void get_transaction_binlog_name (transaction_t *T, char binlog_name[PATH_MAX]) {
  char dir[PATH_MAX], b[28];
  get_transaction_dir (T, dir);
  get_transaction_hash (T, b);
  assert (snprintf (binlog_name, PATH_MAX, "%s/.binlog.%s", dir, b) < PATH_MAX);
}
