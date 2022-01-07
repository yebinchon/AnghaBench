
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int md; int cipher; } ;
struct TYPE_6__ {TYPE_1__ generating; } ;
struct TYPE_7__ {TYPE_2__ vars; int update_thread; } ;
struct TYPE_8__ {TYPE_3__ ticket; } ;


 int EVP_aes_256_cbc () ;
 int EVP_sha256 () ;
 TYPE_4__ conf ;
 int ticket_internal_updater ;

__attribute__((used)) static void ticket_init_defaults(void)
{
    conf.ticket.update_thread = ticket_internal_updater;

    conf.ticket.vars.generating.cipher = EVP_aes_256_cbc();

    conf.ticket.vars.generating.md = EVP_sha256();
}
