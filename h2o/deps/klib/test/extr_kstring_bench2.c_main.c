
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ clock_t ;


 char* BoyerMoore (char*,int,char*,int) ;
 float CLOCKS_PER_SEC ;
 int alphabet ;
 char* calloc (int,int) ;
 scalar_t__ clock () ;
 int fprintf (int ,char*,float) ;
 char* gen_data (int,int ) ;
 char* kmemmem (char*,int,char*,int,int ) ;
 int lrand48 () ;
 int memcpy (char*,char*,int) ;
 char* memmem (char*,int,char*,int) ;
 int pat_len ;
 int repeat ;
 int srand48 (int) ;
 int stderr ;
 int str_len ;
 char* strnstr (char*,char*,int) ;

int main()
{
 char *data;
 int i;
 clock_t t;
 t = clock();
 data = gen_data(str_len, alphabet);
 fprintf(stderr, "Generate data in %.3f sec\n", (float)(clock() - t) / CLOCKS_PER_SEC);
 {
  t = clock(); srand48(1331);
  for (i = 0; i < repeat; ++i) {
   int y = lrand48() % (str_len - pat_len);
   char *ret;
   ret = kmemmem(data, str_len, data + y, pat_len, 0);

  }
  fprintf(stderr, "Search patterns in %.3f sec\n", (float)(clock() - t) / CLOCKS_PER_SEC);
 }
 if (1) {
  t = clock(); srand48(1331);
  for (i = 0; i < repeat; ++i) {
   int y = lrand48() % (str_len - pat_len);
   char *ret;
   ret = BoyerMoore(data, str_len, data + y, pat_len);

  }
  fprintf(stderr, "Search patterns in %.3f sec\n", (float)(clock() - t) / CLOCKS_PER_SEC);
 }
 return 0;
}
