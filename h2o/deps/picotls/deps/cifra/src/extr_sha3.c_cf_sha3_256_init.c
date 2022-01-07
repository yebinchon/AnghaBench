
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cf_sha3_context ;


 int sha3_init (int *,int,int) ;

void cf_sha3_256_init(cf_sha3_context *ctx)
{
  sha3_init(ctx, 1088, 512);
}
