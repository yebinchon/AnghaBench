
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int escrypt_local_t ;


 int escrypt_free_region (int *) ;

int
escrypt_free_local(escrypt_local_t *local)
{
    return escrypt_free_region(local);
}
