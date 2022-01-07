
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int storage_binlog_check (char*) ;
 int usage () ;

int main (int argc, char *argv[]) {
  if (argc < 2) {
    usage ();
    return 1;
  }
  storage_binlog_check (argv[1]);
  return 0;
}
