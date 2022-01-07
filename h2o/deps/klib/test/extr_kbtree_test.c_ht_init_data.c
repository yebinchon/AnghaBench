
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ calloc (int,int) ;
 int data_size ;
 int drand48 () ;
 int* int_data ;
 int printf (char*) ;
 int sprintf (char*,char*,int) ;
 int srand48 (int) ;
 char** str_data ;
 char* strdup (char*) ;

void ht_init_data()
{
 int i;
 char buf[256];
 printf("--- generating data... ");
 srand48(11);
 int_data = (unsigned*)calloc(data_size, sizeof(unsigned));
 str_data = (char**)calloc(data_size, sizeof(char*));
 for (i = 0; i < data_size; ++i) {
  int_data[i] = (unsigned)(data_size * drand48() / 4) * 271828183u;
  sprintf(buf, "%x", int_data[i]);
  str_data[i] = strdup(buf);
 }
 printf("done!\n");
}
