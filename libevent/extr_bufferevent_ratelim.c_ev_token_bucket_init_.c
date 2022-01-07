
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ev_token_bucket_cfg {scalar_t__ read_maximum; scalar_t__ write_maximum; scalar_t__ read_rate; scalar_t__ write_rate; } ;
struct ev_token_bucket {scalar_t__ read_limit; scalar_t__ write_limit; int last_updated; } ;
typedef int ev_uint32_t ;
typedef scalar_t__ ev_int64_t ;



int
ev_token_bucket_init_(struct ev_token_bucket *bucket,
    const struct ev_token_bucket_cfg *cfg,
    ev_uint32_t current_tick,
    int reinitialize)
{
 if (reinitialize) {





  if (bucket->read_limit > (ev_int64_t) cfg->read_maximum)
   bucket->read_limit = cfg->read_maximum;
  if (bucket->write_limit > (ev_int64_t) cfg->write_maximum)
   bucket->write_limit = cfg->write_maximum;
 } else {
  bucket->read_limit = cfg->read_rate;
  bucket->write_limit = cfg->write_rate;
  bucket->last_updated = current_tick;
 }
 return 0;
}
