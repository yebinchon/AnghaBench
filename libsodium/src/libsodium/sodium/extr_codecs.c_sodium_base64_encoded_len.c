
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t sodium_base64_ENCODED_LEN (size_t const,int const) ;
 int sodium_base64_check_variant (int const) ;

size_t
sodium_base64_encoded_len(const size_t bin_len, const int variant)
{
    sodium_base64_check_variant(variant);

    return sodium_base64_ENCODED_LEN(bin_len, variant);
}
