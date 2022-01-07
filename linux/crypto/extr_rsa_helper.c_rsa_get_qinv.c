
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_key {size_t n_sz; size_t qinv_sz; void const* qinv; } ;


 int EINVAL ;

int rsa_get_qinv(void *context, size_t hdrlen, unsigned char tag,
   const void *value, size_t vlen)
{
 struct rsa_key *key = context;


 if (!value || !vlen || vlen > key->n_sz)
  return -EINVAL;

 key->qinv = value;
 key->qinv_sz = vlen;

 return 0;
}
