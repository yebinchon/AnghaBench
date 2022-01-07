
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s; scalar_t__ m; scalar_t__ l; } ;
typedef TYPE_1__ kstring_t ;
typedef int kstream_t ;
typedef scalar_t__ clock_t ;
typedef int FILE ;


 int BUF_SIZE ;
 float CLOCKS_PER_SEC ;
 int O_RDONLY ;
 scalar_t__ clock () ;
 int close (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int ,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (scalar_t__) ;
 int ks_destroy (int *) ;
 scalar_t__ ks_getuntil (int *,char,TYPE_1__*,int*) ;
 int * ks_init (int) ;
 char* malloc (int ) ;
 int open (char*,int ) ;
 int stderr ;

int main(int argc, char *argv[])
{
 clock_t t;
 if (argc == 1) {
  fprintf(stderr, "Usage: %s <in.txt>\n", argv[0]);
  return 1;
 }
 {
  FILE *fp;
  char *s;
  t = clock();
  s = malloc(BUF_SIZE);
  fp = fopen(argv[1], "r");
  while (fgets(s, BUF_SIZE, fp));
  fclose(fp);
  fprintf(stderr, "[fgets] %.2f sec\n", (float)(clock() - t) / CLOCKS_PER_SEC);
 }
 {
  int fd, dret;
  kstream_t *ks;
  kstring_t s;
  t = clock();
  s.l = s.m = 0; s.s = 0;
  fd = open(argv[1], O_RDONLY);
  ks = ks_init(fd);
  while (ks_getuntil(ks, '\n', &s, &dret) >= 0);
  free(s.s);
  ks_destroy(ks);
  close(fd);
  fprintf(stderr, "[kstream] %.2f sec\n", (float)(clock() - t) / CLOCKS_PER_SEC);
 }
 return 0;
}
