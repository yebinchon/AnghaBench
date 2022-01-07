
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int argon2_type ;
struct TYPE_4__ {unsigned char* out; unsigned char* pwd; unsigned char* salt; unsigned int adlen; unsigned int secretlen; scalar_t__ t_cost; scalar_t__ m_cost; int * secret; int ad; scalar_t__ saltlen; scalar_t__ pwdlen; scalar_t__ outlen; } ;
typedef TYPE_1__ argon2_context ;


 int EINVAL ;
 unsigned long long UINT32_MAX ;
 scalar_t__ argon2_decode_string (TYPE_1__*,char const*,int ) ;
 scalar_t__ calloc (size_t,unsigned int) ;
 size_t crypto_pwhash_STRBYTES ;
 int errno ;
 int free (unsigned char*) ;
 int memset (TYPE_1__*,int ,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
_needs_rehash(const char *str, unsigned long long opslimit, size_t memlimit,
              argon2_type type)
{
    unsigned char *fodder;
    argon2_context ctx;
    size_t fodder_len;
    int ret = -1;

    fodder_len = strlen(str);
    memlimit /= 1024U;
    if (opslimit > UINT32_MAX || memlimit > UINT32_MAX ||
        fodder_len >= crypto_pwhash_STRBYTES) {
        errno = EINVAL;
        return -1;
    }
    memset(&ctx, 0, sizeof ctx);
    if ((fodder = (unsigned char *) calloc(fodder_len, 1U)) == ((void*)0)) {
        return -1;
    }
    ctx.out = ctx.pwd = ctx.salt = fodder;
    ctx.outlen = ctx.pwdlen = ctx.saltlen = (uint32_t) fodder_len;
    ctx.ad = ctx.secret = ((void*)0);
    ctx.adlen = ctx.secretlen = 0U;
    if (argon2_decode_string(&ctx, str, type) != 0) {
        errno = EINVAL;
        ret = -1;
    } else if (ctx.t_cost != (uint32_t) opslimit ||
               ctx.m_cost != (uint32_t) memlimit) {
        ret = 1;
    } else {
        ret = 0;
    }
    free(fodder);

    return ret;
}
