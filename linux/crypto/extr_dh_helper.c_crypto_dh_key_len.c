
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh {int dummy; } ;


 unsigned int DH_KPP_SECRET_MIN_SIZE ;
 unsigned int dh_data_size (struct dh const*) ;

unsigned int crypto_dh_key_len(const struct dh *p)
{
 return DH_KPP_SECRET_MIN_SIZE + dh_data_size(p);
}
