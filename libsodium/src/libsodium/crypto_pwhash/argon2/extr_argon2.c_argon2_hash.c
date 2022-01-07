
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef void* uint32_t ;
typedef int argon2_type ;
struct TYPE_4__ {char* out; char* pwd; char* salt; void* t_cost; void* m_cost; void* lanes; void* threads; int flags; scalar_t__ adlen; int * ad; scalar_t__ secretlen; int * secret; void* saltlen; void* pwdlen; void* outlen; } ;
typedef TYPE_1__ argon2_context ;


 int ARGON2_DEFAULT_FLAGS ;
 int ARGON2_ENCODING_FAIL ;
 size_t const ARGON2_MAX_OUTLEN ;
 size_t const ARGON2_MAX_PWD_LENGTH ;
 size_t const ARGON2_MAX_SALT_LENGTH ;
 int ARGON2_MEMORY_ALLOCATION_ERROR ;
 int ARGON2_OK ;
 int ARGON2_OUTPUT_TOO_LONG ;
 int ARGON2_PWD_TOO_LONG ;
 int ARGON2_SALT_TOO_LONG ;
 int argon2_ctx (TYPE_1__*,int ) ;
 int argon2_encode_string (char*,size_t const,TYPE_1__*,int ) ;
 int free (char*) ;
 scalar_t__ malloc (size_t const) ;
 int memcpy (void*,char*,size_t const) ;
 int sodium_memzero (char*,size_t const) ;

int
argon2_hash(const uint32_t t_cost, const uint32_t m_cost,
            const uint32_t parallelism, const void *pwd, const size_t pwdlen,
            const void *salt, const size_t saltlen, void *hash,
            const size_t hashlen, char *encoded, const size_t encodedlen,
            argon2_type type)
{
    argon2_context context;
    int result;
    uint8_t *out;

    if (pwdlen > ARGON2_MAX_PWD_LENGTH) {
        return ARGON2_PWD_TOO_LONG;
    }

    if (hashlen > ARGON2_MAX_OUTLEN) {
        return ARGON2_OUTPUT_TOO_LONG;
    }

    if (saltlen > ARGON2_MAX_SALT_LENGTH) {
        return ARGON2_SALT_TOO_LONG;
    }

    out = (uint8_t *) malloc(hashlen);
    if (!out) {
        return ARGON2_MEMORY_ALLOCATION_ERROR;
    }

    context.out = (uint8_t *) out;
    context.outlen = (uint32_t) hashlen;
    context.pwd = (uint8_t *) pwd;
    context.pwdlen = (uint32_t) pwdlen;
    context.salt = (uint8_t *) salt;
    context.saltlen = (uint32_t) saltlen;
    context.secret = ((void*)0);
    context.secretlen = 0;
    context.ad = ((void*)0);
    context.adlen = 0;
    context.t_cost = t_cost;
    context.m_cost = m_cost;
    context.lanes = parallelism;
    context.threads = parallelism;
    context.flags = ARGON2_DEFAULT_FLAGS;

    result = argon2_ctx(&context, type);

    if (result != ARGON2_OK) {
        sodium_memzero(out, hashlen);
        free(out);
        return result;
    }


    if (hash) {
        memcpy(hash, out, hashlen);
    }


    if (encoded && encodedlen) {
        if (argon2_encode_string(encoded, encodedlen,
                                 &context, type) != ARGON2_OK) {
            sodium_memzero(out, hashlen);
            sodium_memzero(encoded, encodedlen);
            free(out);
            return ARGON2_ENCODING_FAIL;
        }
    }

    sodium_memzero(out, hashlen);
    free(out);

    return ARGON2_OK;
}
