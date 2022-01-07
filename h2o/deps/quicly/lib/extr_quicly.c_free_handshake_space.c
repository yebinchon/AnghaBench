
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * aead; } ;
struct TYPE_3__ {TYPE_2__ egress; TYPE_2__ ingress; } ;
struct st_quicly_handshake_space_t {int super; TYPE_1__ cipher; } ;


 int dispose_cipher (TYPE_2__*) ;
 int do_free_pn_space (int *) ;

__attribute__((used)) static void free_handshake_space(struct st_quicly_handshake_space_t **space)
{
    if (*space != ((void*)0)) {
        if ((*space)->cipher.ingress.aead != ((void*)0))
            dispose_cipher(&(*space)->cipher.ingress);
        if ((*space)->cipher.egress.aead != ((void*)0))
            dispose_cipher(&(*space)->cipher.egress);
        do_free_pn_space(&(*space)->super);
        *space = ((void*)0);
    }
}
