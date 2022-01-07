
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;


 int CLOCK_REALTIME ;
 int assert (int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int* dl_malloc (size_t) ;
 int rand () ;
 int srand (unsigned int) ;
 int usleep (int) ;

int *rand_perm (int n) {
  int *v = dl_malloc ((size_t)n * sizeof (int)), i;

  usleep (1);
  struct timespec tv;
  assert (clock_gettime (CLOCK_REALTIME, &tv) >= 0);
  srand ((unsigned int)tv.tv_nsec * 123456789u + (unsigned int)tv.tv_sec * 987654321u);

  for (i = 0; i < n; i++) {
    v[i] = rand() % (i + 1);
  }

  return v;
}
