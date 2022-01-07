
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int escrypt_local_t ;


 int init_region (int *) ;

int
escrypt_init_local(escrypt_local_t *local)
{
    init_region(local);

    return 0;
}
