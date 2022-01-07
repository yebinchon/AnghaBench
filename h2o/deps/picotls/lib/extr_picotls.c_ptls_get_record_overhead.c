
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* aead; } ;
struct TYPE_10__ {TYPE_3__ enc; } ;
struct TYPE_11__ {TYPE_4__ traffic_protection; } ;
typedef TYPE_5__ ptls_t ;
struct TYPE_8__ {TYPE_1__* algo; } ;
struct TYPE_7__ {size_t tag_size; } ;



size_t ptls_get_record_overhead(ptls_t *tls)
{
    return 6 + tls->traffic_protection.enc.aead->algo->tag_size;
}
