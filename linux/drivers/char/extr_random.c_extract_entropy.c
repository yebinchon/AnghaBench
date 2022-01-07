
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entropy_store {int last_data_init; int name; int lock; int last_data; } ;
typedef int ssize_t ;
typedef int __u8 ;


 int ENTROPY_BITS (struct entropy_store*) ;
 int EXTRACT_SIZE ;
 int _RET_IP_ ;
 int _extract_entropy (struct entropy_store*,void*,size_t,scalar_t__) ;
 size_t account (struct entropy_store*,size_t,int,int) ;
 int extract_buf (struct entropy_store*,int *) ;
 scalar_t__ fips_enabled ;
 int memcpy (int ,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_extract_entropy (int ,size_t,int ,int ) ;
 int xfer_secondary_pool (struct entropy_store*,size_t) ;

__attribute__((used)) static ssize_t extract_entropy(struct entropy_store *r, void *buf,
     size_t nbytes, int min, int reserved)
{
 __u8 tmp[EXTRACT_SIZE];
 unsigned long flags;


 if (fips_enabled) {
  spin_lock_irqsave(&r->lock, flags);
  if (!r->last_data_init) {
   r->last_data_init = 1;
   spin_unlock_irqrestore(&r->lock, flags);
   trace_extract_entropy(r->name, EXTRACT_SIZE,
           ENTROPY_BITS(r), _RET_IP_);
   xfer_secondary_pool(r, EXTRACT_SIZE);
   extract_buf(r, tmp);
   spin_lock_irqsave(&r->lock, flags);
   memcpy(r->last_data, tmp, EXTRACT_SIZE);
  }
  spin_unlock_irqrestore(&r->lock, flags);
 }

 trace_extract_entropy(r->name, nbytes, ENTROPY_BITS(r), _RET_IP_);
 xfer_secondary_pool(r, nbytes);
 nbytes = account(r, nbytes, min, reserved);

 return _extract_entropy(r, buf, nbytes, fips_enabled);
}
