
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int norx32_ctx ;


 int DOMAIN_TRAILER ;
 int input (int *,int ,int const*,size_t) ;
 int switch_domain (int *,int ) ;

__attribute__((used)) static void do_trailer(norx32_ctx *ctx, const uint8_t *buf, size_t nbuf)
{
  if (nbuf)
  {
    switch_domain(ctx, DOMAIN_TRAILER);
    input(ctx, DOMAIN_TRAILER, buf, nbuf);
  }
}
