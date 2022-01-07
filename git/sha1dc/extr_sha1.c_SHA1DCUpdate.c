
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int total; scalar_t__ buffer; } ;
typedef TYPE_1__ SHA1_CTX ;


 int memcpy (scalar_t__,char const*,size_t) ;
 int sha1_process (TYPE_1__*,int *) ;

void SHA1DCUpdate(SHA1_CTX* ctx, const char* buf, size_t len)
{
 unsigned left, fill;

 if (len == 0)
  return;

 left = ctx->total & 63;
 fill = 64 - left;

 if (left && len >= fill)
 {
  ctx->total += fill;
  memcpy(ctx->buffer + left, buf, fill);
  sha1_process(ctx, (uint32_t*)(ctx->buffer));
  buf += fill;
  len -= fill;
  left = 0;
 }
 while (len >= 64)
 {
  ctx->total += 64;




  memcpy(ctx->buffer, buf, 64);
  sha1_process(ctx, (uint32_t*)(ctx->buffer));

  buf += 64;
  len -= 64;
 }
 if (len > 0)
 {
  ctx->total += len;
  memcpy(ctx->buffer + left, buf, len);
 }
}
