
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H2O_HPACK_ENCODE_INT_MAX_LENGTH ;

__attribute__((used)) static size_t calc_capacity(size_t name_len, size_t value_len)
{
    return name_len + value_len + 1 + H2O_HPACK_ENCODE_INT_MAX_LENGTH * 2;
}
