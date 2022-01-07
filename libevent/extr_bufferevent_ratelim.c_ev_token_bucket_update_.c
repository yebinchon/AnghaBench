
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ev_token_bucket_cfg {unsigned int read_maximum; unsigned int read_rate; unsigned int write_maximum; unsigned int write_rate; } ;
struct ev_token_bucket {void* last_updated; unsigned int read_limit; unsigned int write_limit; } ;
typedef void* ev_uint32_t ;


 unsigned int INT_MAX ;

int
ev_token_bucket_update_(struct ev_token_bucket *bucket,
    const struct ev_token_bucket_cfg *cfg,
    ev_uint32_t current_tick)
{


 unsigned n_ticks = current_tick - bucket->last_updated;



 if (n_ticks == 0 || n_ticks > INT_MAX)
  return 0;
 if ((cfg->read_maximum - bucket->read_limit) / n_ticks < cfg->read_rate)
  bucket->read_limit = cfg->read_maximum;
 else
  bucket->read_limit += n_ticks * cfg->read_rate;


 if ((cfg->write_maximum - bucket->write_limit) / n_ticks < cfg->write_rate)
  bucket->write_limit = cfg->write_maximum;
 else
  bucket->write_limit += n_ticks * cfg->write_rate;


 bucket->last_updated = current_tick;

 return 1;
}
