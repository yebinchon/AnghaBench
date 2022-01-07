
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_key {size_t n_sz; size_t p_sz; void const* p; } ;


 int EINVAL ;

int rsa_get_p(void *context, size_t hdrlen, unsigned char tag,
       const void *value, size_t vlen)
{
 struct rsa_key *key = context;


 if (!value || !vlen || vlen > key->n_sz)
  return -EINVAL;

 key->p = value;
 key->p_sz = vlen;

 return 0;
}
