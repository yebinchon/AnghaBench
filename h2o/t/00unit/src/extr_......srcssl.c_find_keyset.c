
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct st_quic_keyset_t {scalar_t__ name; } ;
struct TYPE_3__ {size_t size; struct st_quic_keyset_t* entries; } ;
struct TYPE_4__ {TYPE_1__ keys; } ;


 TYPE_2__ quic_keys ;

__attribute__((used)) static struct st_quic_keyset_t *find_keyset(uint8_t key_id)
{
    size_t i;
    for (i = 0; i != quic_keys.keys.size; ++i) {
        struct st_quic_keyset_t *key = quic_keys.keys.entries + i;
        if (key->name == key_id)
            return key;
    }
    return ((void*)0);
}
