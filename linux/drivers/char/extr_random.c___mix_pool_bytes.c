
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entropy_store {int name; } ;


 int _RET_IP_ ;
 int _mix_pool_bytes (struct entropy_store*,void const*,int) ;
 int trace_mix_pool_bytes_nolock (int ,int,int ) ;

__attribute__((used)) static void __mix_pool_bytes(struct entropy_store *r, const void *in,
        int nbytes)
{
 trace_mix_pool_bytes_nolock(r->name, nbytes, _RET_IP_);
 _mix_pool_bytes(r, in, nbytes);
}
