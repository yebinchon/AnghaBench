
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int ** keys; } ;
struct TYPE_4__ {TYPE_1__ keys; } ;
typedef int RSA ;


 int RSA_up_ref (int *) ;
 TYPE_2__ daemon_vars ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static RSA *daemon_get_rsa(size_t key_index)
{
    RSA *rsa;

    pthread_mutex_lock(&daemon_vars.keys.lock);
    rsa = daemon_vars.keys.keys[key_index];
    if (rsa)
        RSA_up_ref(rsa);
    pthread_mutex_unlock(&daemon_vars.keys.lock);

    return rsa;
}
