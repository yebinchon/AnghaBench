
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int randombytes_implementation ;


 int * implementation ;

int
randombytes_set_implementation(randombytes_implementation *impl)
{
    implementation = impl;
    return 0;
}
