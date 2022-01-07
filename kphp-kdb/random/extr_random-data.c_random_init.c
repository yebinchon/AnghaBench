
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B ;
 scalar_t__ bbs_init (int *,int,char const* const,int) ;
 int bbs_next_random_byte (int *) ;
 int buffer ;
 int exit (int) ;
 int kprintf (char*) ;
 scalar_t__ qleft ;
 scalar_t__ qright ;
 int qsize ;
 scalar_t__ qtotal ;
 int zmalloc (int) ;

void random_init (int key_size, int buffer_size, const char *const password_filename, int password_length) {
  int i;
  if (buffer_size <= 0) {
    buffer_size = 256 << 20;
  }
  buffer = zmalloc (buffer_size);
  qsize = buffer_size;
  qleft = 0;
  qright = 0;
  qtotal = 0;

  if (bbs_init (&B, key_size, password_filename, password_length) < 0) {
    kprintf ("Random number generator initialization failed.\n");
    exit (1);
  }

  for (i = 1; i <= 64; i++) {
    bbs_next_random_byte (&B);
  }
}
