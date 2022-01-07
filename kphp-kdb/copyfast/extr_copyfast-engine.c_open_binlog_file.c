
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fd; } ;


 char* BINLOG_NAME ;
 TYPE_1__* CC ;
 int O_CREAT ;
 int O_RDWR ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ open (char*,int,int) ;
 int stderr ;

void open_binlog_file (void) {
  CC->fd = open (BINLOG_NAME, O_RDWR | O_CREAT, 0600);
  if (CC->fd < 0) {
    fprintf (stderr, "can not open file for replication (error %m)\n");
    fprintf (stderr, "file %s\n", BINLOG_NAME);
    exit (1);
  }
}
