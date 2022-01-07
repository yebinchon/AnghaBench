
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {int len; int buf; } ;
struct TYPE_12__ {TYPE_2__ bytes; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
typedef TYPE_3__ sl_value ;
struct TYPE_15__ {scalar_t__ start; } ;
typedef TYPE_4__ dstr ;
typedef int cf_chash ;


 int cf_pbkdf2_hmac (int ,int ,int ,int ,int ,int *,int ,int const*) ;
 scalar_t__ dstr_expand (TYPE_4__*,int ) ;
 int dstr_free (TYPE_4__*) ;
 int dstr_init (TYPE_4__*) ;
 TYPE_3__* sl_new_bytes (int *,int ) ;

__attribute__((used)) static sl_value * do_pbkdf2(const cf_chash *h, sl_value *pw, sl_value *salt,
                            uint32_t iterations, uint32_t outlen)
{
  dstr out;
  dstr_init(&out);
  if (dstr_expand(&out, outlen))
    return ((void*)0);

  cf_pbkdf2_hmac(pw->u.bytes.buf, pw->u.bytes.len,
                 salt->u.bytes.buf, salt->u.bytes.len,
                 iterations,
                 (uint8_t *) out.start, outlen,
                 h);

  sl_value *ret = sl_new_bytes((uint8_t *) out.start, outlen);
  dstr_free(&out);
  return ret;
}
