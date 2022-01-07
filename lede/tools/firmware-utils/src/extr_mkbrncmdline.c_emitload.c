
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static void emitload(int outfd, int reg, unsigned value)
{
 char buf[8] = {
  0x3c, 0x04 + reg,
  value >> 24, value >> 16,
  0x34, 0x84 + reg + (reg << 5),
  value >> 8, value,
 };
 if (write(outfd, buf, sizeof(buf)) != sizeof(buf)) {
  fprintf(stderr, "write: %s\n", strerror(errno));
  exit(1);
 }
}
