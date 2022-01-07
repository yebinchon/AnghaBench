
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_7__ {int pid; } ;
typedef TYPE_1__ process_info_t ;
typedef int fd_set ;
struct TYPE_8__ {int n; int* pipe; TYPE_1__* vec; } ;
typedef TYPE_2__ dowait_args ;


 scalar_t__ EINTR ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int SIGTERM ;
 int abort () ;
 int assert (int) ;
 int close (int) ;
 int dowait (TYPE_2__*) ;
 scalar_t__ errno ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int kill (int ,int ) ;
 int perror (char*) ;
 int pipe (int*) ;
 scalar_t__ pthread_attr_destroy (int *) ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setstacksize (int *,int) ;
 int pthread_create (int *,int *,int (*) (TYPE_2__*),TYPE_2__*) ;
 scalar_t__ pthread_join (int ,int *) ;
 int select (int,int *,int *,int *,struct timeval*) ;

int process_wait(process_info_t* vec, int n, int timeout) {
  int i;
  int r;
  int retval;
  process_info_t* p;
  dowait_args args;
  pthread_t tid;
  pthread_attr_t attr;
  unsigned int elapsed_ms;
  struct timeval timebase;
  struct timeval tv;
  fd_set fds;

  args.vec = vec;
  args.n = n;
  args.pipe[0] = -1;
  args.pipe[1] = -1;


  if (timeout == -1) {
    dowait(&args);
    return 0;
  }







  r = pipe((int*)&(args.pipe));
  if (r) {
    perror("pipe()");
    return -1;
  }

  if (pthread_attr_init(&attr))
    abort();




  if (pthread_attr_setstacksize(&attr, 256 * 1024))

    abort();

  r = pthread_create(&tid, &attr, dowait, &args);

  if (pthread_attr_destroy(&attr))
    abort();

  if (r) {
    perror("pthread_create()");
    retval = -1;
    goto terminate;
  }

  if (gettimeofday(&timebase, ((void*)0)))
    abort();

  tv = timebase;
  for (;;) {

    assert(tv.tv_sec > timebase.tv_sec ||
           (tv.tv_sec == timebase.tv_sec && tv.tv_usec >= timebase.tv_usec));

    elapsed_ms =
        (tv.tv_sec - timebase.tv_sec) * 1000 +
        (tv.tv_usec / 1000) -
        (timebase.tv_usec / 1000);

    r = 0;
    if (elapsed_ms >= (unsigned) timeout)
      break;

    tv.tv_sec = (timeout - elapsed_ms) / 1000;
    tv.tv_usec = (timeout - elapsed_ms) % 1000 * 1000;

    FD_ZERO(&fds);
    FD_SET(args.pipe[0], &fds);

    r = select(args.pipe[0] + 1, &fds, ((void*)0), ((void*)0), &tv);
    if (!(r == -1 && errno == EINTR))
      break;

    if (gettimeofday(&tv, ((void*)0)))
      abort();
  }

  if (r == -1) {
    perror("select()");
    retval = -1;

  } else if (r) {

    retval = 0;

  } else {

    for (i = 0; i < n; i++) {
      p = (process_info_t*)(vec + i * sizeof(process_info_t));
      kill(p->pid, SIGTERM);
    }
    retval = -2;
  }

  if (pthread_join(tid, ((void*)0)))
    abort();

terminate:
  close(args.pipe[0]);
  close(args.pipe[1]);
  return retval;
}
