
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int data_size ;
 int ht_destroy_data () ;
 int ht_init_data () ;
 int ht_khash_int ;
 int ht_khash_str ;
 int ht_timing (int ) ;

int main(int argc, char *argv[])
{
 if (argc > 1) data_size = atoi(argv[1]);
 ht_init_data();
 ht_timing(ht_khash_int);
 ht_timing(ht_khash_str);
 ht_destroy_data();
 return 0;
}
