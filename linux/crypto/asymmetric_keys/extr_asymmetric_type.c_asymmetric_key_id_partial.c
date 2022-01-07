
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asymmetric_key_id {scalar_t__ len; scalar_t__ data; } ;


 scalar_t__ memcmp (scalar_t__,scalar_t__,scalar_t__) ;

bool asymmetric_key_id_partial(const struct asymmetric_key_id *kid1,
          const struct asymmetric_key_id *kid2)
{
 if (!kid1 || !kid2)
  return 0;
 if (kid1->len < kid2->len)
  return 0;
 return memcmp(kid1->data + (kid1->len - kid2->len),
        kid2->data, kid2->len) == 0;
}
