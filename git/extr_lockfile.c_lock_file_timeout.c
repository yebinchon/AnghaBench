
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;


 int BACKOFF_MAX_MULTIPLIER ;
 scalar_t__ EEXIST ;
 int INITIAL_BACKOFF_MS ;
 scalar_t__ errno ;
 scalar_t__ getpid () ;
 int lock_file (struct lock_file*,char const*,int) ;
 int rand () ;
 int sleep_millisec (long) ;
 int srand (unsigned int) ;

__attribute__((used)) static int lock_file_timeout(struct lock_file *lk, const char *path,
        int flags, long timeout_ms)
{
 int n = 1;
 int multiplier = 1;
 long remaining_ms = 0;
 static int random_initialized = 0;

 if (timeout_ms == 0)
  return lock_file(lk, path, flags);

 if (!random_initialized) {
  srand((unsigned int)getpid());
  random_initialized = 1;
 }

 if (timeout_ms > 0)
  remaining_ms = timeout_ms;

 while (1) {
  long backoff_ms, wait_ms;
  int fd;

  fd = lock_file(lk, path, flags);

  if (fd >= 0)
   return fd;
  else if (errno != EEXIST)
   return -1;
  else if (timeout_ms > 0 && remaining_ms <= 0)
   return -1;

  backoff_ms = multiplier * INITIAL_BACKOFF_MS;

  wait_ms = (750 + rand() % 500) * backoff_ms / 1000;
  sleep_millisec(wait_ms);
  remaining_ms -= wait_ms;


  multiplier += 2*n + 1;
  if (multiplier > BACKOFF_MAX_MULTIPLIER)
   multiplier = BACKOFF_MAX_MULTIPLIER;
  else
   n++;
 }
}
