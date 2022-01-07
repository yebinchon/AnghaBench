
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int saint_t ;


 int SAIS_CORE (unsigned char const*,int*,int ,int,int,int) ;

int SAIS_MAIN(const unsigned char *T, saint_t *SA, saint_t n, int k)
{
 if (T == ((void*)0) || SA == ((void*)0) || T[n - 1] != '\0' || n <= 0) return -1;
 if (k < 0 || k > 256) k = 256;
 return SAIS_CORE(T, SA, 0, n, (saint_t)k, 1);
}
