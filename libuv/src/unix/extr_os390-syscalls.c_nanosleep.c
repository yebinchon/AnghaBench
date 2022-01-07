
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned int tv_nsec; unsigned int tv_sec; } ;


 int BPX1CTW (unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int*,int*,int*) ;
 int BPX4CTW (unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int*,int*,int*) ;
 unsigned int CW_CONDVAR ;
 scalar_t__ EAGAIN ;
 int assert (int) ;
 scalar_t__ errno ;

int nanosleep(const struct timespec* req, struct timespec* rem) {
  unsigned nano;
  unsigned seconds;
  unsigned events;
  unsigned secrem;
  unsigned nanorem;
  int rv;
  int rc;
  int rsn;

  nano = (int)req->tv_nsec;
  seconds = req->tv_sec;
  events = CW_CONDVAR;


  BPX4CTW(&seconds, &nano, &events, &secrem, &nanorem, &rv, &rc, &rsn);




  assert(rv == -1 && errno == EAGAIN);

  if(rem != ((void*)0)) {
    rem->tv_nsec = nanorem;
    rem->tv_sec = secrem;
  }

  return 0;
}
