
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {int data; } ;


 int DATA_SIZE_BITS ;
 int jent_fips_test (struct rand_data*) ;
 int jent_gen_entropy (struct rand_data*) ;
 int jent_memcpy (unsigned char*,int *,unsigned int) ;

int jent_read_entropy(struct rand_data *ec, unsigned char *data,
        unsigned int len)
{
 unsigned char *p = data;

 if (!ec)
  return -1;

 while (0 < len) {
  unsigned int tocopy;

  jent_gen_entropy(ec);
  jent_fips_test(ec);
  if ((DATA_SIZE_BITS / 8) < len)
   tocopy = (DATA_SIZE_BITS / 8);
  else
   tocopy = len;
  jent_memcpy(p, &ec->data, tocopy);

  len -= tocopy;
  p += tocopy;
 }

 return 0;
}
