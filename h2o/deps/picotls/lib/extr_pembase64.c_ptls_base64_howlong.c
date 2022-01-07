
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t ptls_base64_howlong(size_t data_length)
{
    return (((data_length + 2) / 3) * 4);
}
