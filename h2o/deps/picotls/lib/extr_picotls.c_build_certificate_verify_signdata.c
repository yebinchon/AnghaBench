
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_2__* hashes; } ;
typedef TYPE_3__ ptls_key_schedule_t ;
struct TYPE_9__ {int (* final ) (TYPE_4__*,int *,int ) ;} ;
struct TYPE_7__ {TYPE_1__* algo; TYPE_4__* ctx; } ;
struct TYPE_6__ {scalar_t__ digest_size; } ;


 int PTLS_HASH_FINAL_MODE_SNAPSHOT ;
 size_t PTLS_MAX_CERTIFICATE_VERIFY_SIGNDATA_SIZE ;
 int assert (int) ;
 int memcpy (int *,char const*,scalar_t__) ;
 int memset (int *,int,int) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (TYPE_4__*,int *,int ) ;

__attribute__((used)) static size_t build_certificate_verify_signdata(uint8_t *data, ptls_key_schedule_t *sched, const char *context_string)
{
    size_t datalen = 0;

    memset(data + datalen, 32, 64);
    datalen += 64;
    memcpy(data + datalen, context_string, strlen(context_string) + 1);
    datalen += strlen(context_string) + 1;
    sched->hashes[0].ctx->final(sched->hashes[0].ctx, data + datalen, PTLS_HASH_FINAL_MODE_SNAPSHOT);
    datalen += sched->hashes[0].algo->digest_size;
    assert(datalen <= PTLS_MAX_CERTIFICATE_VERIFY_SIGNDATA_SIZE);

    return datalen;
}
