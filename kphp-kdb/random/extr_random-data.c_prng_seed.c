
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned short tv_sec; unsigned short tv_nsec; } ;


 int CLOCK_REALTIME ;
 int O_RDONLY ;
 int RAND_seed (unsigned char*,int) ;
 int assert (int) ;
 unsigned char* calloc (int,int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int close (int) ;
 int free (unsigned char*) ;
 int get_random_bytes (unsigned char*,int) ;
 unsigned short getpid () ;
 int kprintf (char*,char const*) ;
 int memcpy (unsigned char*,...) ;
 int memset (unsigned char*,int ,int) ;
 int open (char const*,int ) ;
 long long rdtsc () ;
 int read (int,unsigned char*,int) ;
 int vkprintf (int,char*,int) ;

__attribute__((used)) static void prng_seed (const char *password_filename, int password_length) {
  unsigned char *a = calloc (64 + password_length, 1);
  assert (a != ((void*)0));
  long long r = rdtsc ();
  struct timespec T;
  assert (clock_gettime(CLOCK_REALTIME, &T) >= 0);
  memcpy (a, &T.tv_sec, 4);
  memcpy (a+4, &T.tv_nsec, 4);
  memcpy (a+8, &r, 8);
  unsigned short p = getpid ();
  memcpy (a + 16, &p, 2);
  int s = get_random_bytes (a + 18, 32) + 18;
  int fd = open (password_filename, O_RDONLY);
  if (fd < 0) {
    kprintf ("Warning: fail to open password file - \"%s\", %m.\n", password_filename);
  } else {
    int l = read (fd, a + s, password_length);
    if (l < 0) {
      kprintf ("Warning: fail to read password file - \"%s\", %m.\n", password_filename);
    } else {
      vkprintf (1, "read %d bytes from password file.\n", l);
      s += l;
    }
    close (fd);
  }
  RAND_seed (a, s);
  memset (a, 0, s);
  free (a);
}
