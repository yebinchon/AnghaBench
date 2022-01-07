
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int size; int bita_avail; int reserved_size; } ;
struct TYPE_4__ {int lock; int ** keys; TYPE_3__ rsa_slots; } ;
struct TYPE_5__ {TYPE_1__ keys; } ;
typedef int RSA ;


 int BITUNSET (int ,size_t) ;
 int NEVERBLEED_TYPE_RSA ;
 int RSA_up_ref (int *) ;
 size_t SIZE_MAX ;
 int adjust_slots_reserved_size (int ,TYPE_3__*) ;
 size_t bita_ffirst (int ,int ,int ) ;
 TYPE_2__ daemon_vars ;
 int dief (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static size_t daemon_set_rsa(RSA *rsa)
{
    pthread_mutex_lock(&daemon_vars.keys.lock);

    adjust_slots_reserved_size(NEVERBLEED_TYPE_RSA, &daemon_vars.keys.rsa_slots);

    size_t index = bita_ffirst(daemon_vars.keys.rsa_slots.bita_avail, daemon_vars.keys.rsa_slots.reserved_size, 0);

    if (index == SIZE_MAX)
        dief("no available slot for key");


    BITUNSET(daemon_vars.keys.rsa_slots.bita_avail, index);

    daemon_vars.keys.rsa_slots.size++;
    daemon_vars.keys.keys[index] = rsa;
    RSA_up_ref(rsa);
    pthread_mutex_unlock(&daemon_vars.keys.lock);

    return index;
}
