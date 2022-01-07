
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sync_binlog (int) ;

__attribute__((used)) static void default_sighup (void) {
  sync_binlog (2);
}
