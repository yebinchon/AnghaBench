
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int argon2_type ;
struct TYPE_4__ {int * out; void* outlen; int * salt; int * ad; void* saltlen; int threads; int m_cost; int t_cost; void* adlen; scalar_t__ secretlen; int * secret; scalar_t__ pwdlen; int * pwd; } ;
typedef TYPE_1__ argon2_context ;


 int ARGON2_DECODING_LENGTH_FAIL ;
 int ARGON2_MEMORY_ALLOCATION_ERROR ;
 int ARGON2_OK ;
 int ARGON2_VERIFY_MISMATCH ;
 size_t UINT32_MAX ;
 int argon2_decode_string (TYPE_1__*,char const*,int ) ;
 int argon2_hash (int ,int ,int ,void const*,size_t const,int *,void*,int *,void*,int *,int ,int ) ;
 int free (int *) ;
 scalar_t__ malloc (void*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ sodium_memcmp (int *,int *,void*) ;
 size_t strlen (char const*) ;

int
argon2_verify(const char *encoded, const void *pwd, const size_t pwdlen,
              argon2_type type)
{
    argon2_context ctx;
    uint8_t *out;
    int decode_result;
    int ret;
    size_t encoded_len;

    memset(&ctx, 0, sizeof ctx);

    ctx.pwd = ((void*)0);
    ctx.pwdlen = 0;
    ctx.secret = ((void*)0);
    ctx.secretlen = 0;


    encoded_len = strlen(encoded);
    if (encoded_len > UINT32_MAX) {
        return ARGON2_DECODING_LENGTH_FAIL;
    }
    ctx.adlen = (uint32_t) encoded_len;
    ctx.saltlen = (uint32_t) encoded_len;
    ctx.outlen = (uint32_t) encoded_len;

    ctx.ad = (uint8_t *) malloc(ctx.adlen);
    ctx.salt = (uint8_t *) malloc(ctx.saltlen);
    ctx.out = (uint8_t *) malloc(ctx.outlen);
    if (!ctx.out || !ctx.salt || !ctx.ad) {
        free(ctx.ad);
        free(ctx.salt);
        free(ctx.out);
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }
    out = (uint8_t *) malloc(ctx.outlen);
    if (!out) {
        free(ctx.ad);
        free(ctx.salt);
        free(ctx.out);
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }

    decode_result = argon2_decode_string(&ctx, encoded, type);
    if (decode_result != ARGON2_OK) {
        free(ctx.ad);
        free(ctx.salt);
        free(ctx.out);
        free(out);
        return decode_result;
    }

    ret = argon2_hash(ctx.t_cost, ctx.m_cost, ctx.threads, pwd, pwdlen,
                      ctx.salt, ctx.saltlen, out, ctx.outlen, ((void*)0), 0, type);

    free(ctx.ad);
    free(ctx.salt);

    if (ret != ARGON2_OK || sodium_memcmp(out, ctx.out, ctx.outlen) != 0) {
        ret = ARGON2_VERIFY_MISMATCH;
    }
    free(out);
    free(ctx.out);

    return ret;
}
