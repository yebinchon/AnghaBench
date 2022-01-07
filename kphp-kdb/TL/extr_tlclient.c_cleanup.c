
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int epoll_close (int ) ;
 int fclose (int *) ;
 scalar_t__* history_filename ;
 int * log_file ;
 int sfd ;
 int write_history (scalar_t__*) ;

void cleanup (void) {
  if (history_filename[0]) {
    write_history (history_filename);
  }
  epoll_close (sfd);
  close (sfd);

  if (log_file) {
    fclose (log_file);
    log_file = ((void*)0);
  }
}
