
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* hashes; } ;
typedef TYPE_3__ ptls_key_schedule_t ;
struct TYPE_7__ {TYPE_1__* algo; } ;
struct TYPE_6__ {int empty_digest; } ;


 int derive_secret_with_hash (TYPE_3__*,void*,char const*,int ) ;

__attribute__((used)) static int derive_secret_with_empty_digest(ptls_key_schedule_t *sched, void *secret, const char *label)
{
    return derive_secret_with_hash(sched, secret, label, sched->hashes[0].algo->empty_digest);
}
