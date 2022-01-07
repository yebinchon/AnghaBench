
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (char*) ;
 scalar_t__ MultReadInProgress ;
 int del_timer (int *) ;
 int fd_rwsec_done1 (int) ;
 scalar_t__ read_track ;
 int readtrack_timer ;

__attribute__((used)) static void fd_rwsec_done( int status )
{
 DPRINT(("fd_rwsec_done()\n"));

 if (read_track) {
  del_timer(&readtrack_timer);
  if (!MultReadInProgress)
   return;
  MultReadInProgress = 0;
 }
 fd_rwsec_done1(status);
}
