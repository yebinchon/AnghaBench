
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int ,unsigned char*,size_t) ;
 int urandom_fd ;

__attribute__((used)) static int _urandom(void *ctx, unsigned char *out, size_t len)
{
 read(urandom_fd, out, len);
 return 0;
}
