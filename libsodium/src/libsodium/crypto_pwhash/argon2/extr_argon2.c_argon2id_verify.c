
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Argon2_id ;
 int argon2_verify (char const*,void const*,size_t const,int ) ;

int
argon2id_verify(const char *encoded, const void *pwd, const size_t pwdlen)
{
    return argon2_verify(encoded, pwd, pwdlen, Argon2_id);
}
