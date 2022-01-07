
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pidfile ;
 scalar_t__ pidfile_created ;
 int unlink (int ) ;

__attribute__((used)) static void do_remove_pidfile (void) {
  if (pidfile_created) {
    pidfile_created = 0;
    unlink (pidfile);
  }
}
