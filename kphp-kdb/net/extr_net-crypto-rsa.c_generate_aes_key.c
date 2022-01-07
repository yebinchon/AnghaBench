
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned short tv_sec; unsigned short tv_nsec; } ;


 int CLOCK_REALTIME ;
 int RAND_bytes (unsigned char*,int) ;
 int RAND_pseudo_bytes (unsigned char*,int) ;
 int RAND_seed (unsigned char*,int) ;
 int assert (int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int get_random_bytes (unsigned char*,int) ;
 unsigned short getpid () ;
 int memcpy (unsigned char*,...) ;
 long long rdtsc () ;

__attribute__((used)) static int generate_aes_key (unsigned char key[32], unsigned char iv[32]) {
  unsigned char a[64];
  long long r = rdtsc ();
  struct timespec T;
  assert (clock_gettime(CLOCK_REALTIME, &T) >= 0);
  memcpy (a, &T.tv_sec, 4);
  memcpy (a+4, &T.tv_nsec, 4);
  memcpy (a+8, &r, 8);
  unsigned short p = getpid ();
  memcpy (a + 16, &p, 2);
  int s = get_random_bytes (a + 18, 32);
  RAND_seed (a, s + 18);
  assert (RAND_bytes (key, 32));
  assert (RAND_pseudo_bytes (iv, 32));







  return 0;
}
