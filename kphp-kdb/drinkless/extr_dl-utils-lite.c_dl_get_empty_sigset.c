
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int sigemptyset (int *) ;

sigset_t dl_get_empty_sigset (void) {
  sigset_t mask;
  sigemptyset (&mask);
  return mask;
}
