
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct MD5Context {int* bits; unsigned char* in; int buf; } ;


 int MD5Transform (int ,int*) ;
 int byteReverse (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;

__attribute__((used)) static void MD5Update(struct MD5Context *ctx, unsigned char const *buf,
 unsigned len)
{
    uint32_t t;



    t = ctx->bits[0];
    if ((ctx->bits[0] = t + ((uint32_t) len << 3)) < t)
 ctx->bits[1]++;
    ctx->bits[1] += len >> 29;

    t = (t >> 3) & 0x3f;



    if (t) {
 unsigned char *p = (unsigned char *) ctx->in + t;

 t = 64 - t;
 if (len < t) {
     memcpy(p, buf, len);
     return;
 }
 memcpy(p, buf, t);
 byteReverse(ctx->in, 16);
 MD5Transform(ctx->buf, (uint32_t *) ctx->in);
 buf += t;
 len -= t;
    }


    while (len >= 64) {
 memcpy(ctx->in, buf, 64);
 byteReverse(ctx->in, 16);
 MD5Transform(ctx->buf, (uint32_t *) ctx->in);
 buf += 64;
 len -= 64;
    }



    memcpy(ctx->in, buf, len);
}
