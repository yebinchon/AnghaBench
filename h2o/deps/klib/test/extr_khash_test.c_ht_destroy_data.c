
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int data_size ;
 int free (int *****) ;
 int ***** int_data ;
 int ***** str_data ;

void ht_destroy_data()
{
 int i;
 for (i = 0; i < data_size; ++i) free(str_data[i]);
 free(str_data); free(int_data);
}
