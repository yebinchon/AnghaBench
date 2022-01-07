
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int binlogpos_filename ;
 int binlogpos_pos ;
 int exit (int) ;
 int kprintf (char*,int ) ;
 scalar_t__ unlink (int ) ;

__attribute__((used)) static void unlink_binlogpos (void) {
  if (binlogpos_pos >= 0) {
    if (unlink (binlogpos_filename)) {
      kprintf ("unlink (%s) failed. %m\n", binlogpos_filename);
      exit (1);
    }
    binlogpos_pos = -1;
  }
}
