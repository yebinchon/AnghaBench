
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct key_slots {size_t reserved_size; size_t size; int * bita_avail; } ;
struct TYPE_3__ {int * ecdsa_keys; int * keys; } ;
struct TYPE_4__ {TYPE_1__ keys; } ;


 size_t BITBYTES (size_t) ;


 size_t ROUND2WORD (size_t) ;
 TYPE_2__ daemon_vars ;
 size_t default_reserved_size ;
 int dief (char*) ;
 int memset (int *,int,size_t) ;
 void* realloc (int *,size_t) ;

__attribute__((used)) static void adjust_slots_reserved_size(int type, struct key_slots *slots)
{

    if (!slots->reserved_size || (slots->size >= slots->reserved_size)) {
        size_t size = slots->reserved_size ? ((size_t)(slots->reserved_size * 0.50) + slots->reserved_size + 64 - 1 - ((size_t)(slots->reserved_size * 0.50) + slots->reserved_size + 64 - 1) % 64)
                : default_reserved_size;


        switch (type) {
        case 128:
            if ((daemon_vars.keys.keys = realloc(daemon_vars.keys.keys, sizeof(*daemon_vars.keys.keys) * size)) == ((void*)0))
                dief("no memory");
            break;
        case 129:
            if ((daemon_vars.keys.ecdsa_keys = realloc(daemon_vars.keys.ecdsa_keys, sizeof(*daemon_vars.keys.ecdsa_keys) * size)) == ((void*)0))
                dief("no memory");
            break;
        default:
            dief("invalid type adjusting reserved");
        }

        uint8_t *b;
        if ((b = realloc(slots->bita_avail, BITBYTES(size))) == ((void*)0))
            dief("no memory");


        memset(&b[BITBYTES(slots->reserved_size)], 0xff, BITBYTES(size - slots->reserved_size));

        slots->bita_avail = b;
        slots->reserved_size = size;
    }
}
