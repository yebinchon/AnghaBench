
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sodium_misuse () ;

__attribute__((used)) static void
sodium_base64_check_variant(const int variant)
{
    if ((((unsigned int) variant) & ~ 0x6U) != 0x1U) {
        sodium_misuse();
    }
}
