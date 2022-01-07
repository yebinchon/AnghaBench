
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int saint_t ;


 int SAIS_MAIN (unsigned char*,int*,int,int) ;
 int free (int*) ;
 int* malloc (int) ;

int SAIS_BWT(unsigned char *T, saint_t n, int k)
{
 saint_t *SA, i;
 int ret;
 if ((SA = malloc(n * sizeof(saint_t))) == 0) return -1;
 if ((ret = SAIS_MAIN(T, SA, n, k)) != 0) return ret;
 for (i = 0; i < n; ++i)
  if (SA[i]) SA[i] = T[SA[i] - 1];
 for (i = 0; i < n; ++i) T[i] = SA[i];
 free(SA);
 return 0;
}
