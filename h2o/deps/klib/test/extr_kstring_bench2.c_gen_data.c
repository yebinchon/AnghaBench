
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drand48 () ;
 char* malloc (int) ;
 int srand48 (int) ;
 int str_len ;

char *gen_data(int len, int a)
{
 char *data;
 int i;
 long x;
 srand48(11);
 data = malloc(len);
 for (i = 0; i < len; ++i)
  data[i] = (int)(a * drand48()) + '!';
 data[str_len - 1] = 0;
 return data;
}
