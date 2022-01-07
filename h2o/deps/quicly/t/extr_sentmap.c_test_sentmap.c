
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int quicly_sentmap_t ;
typedef int quicly_sentmap_iter_t ;
struct TYPE_3__ {int packet_number; int sent_at; scalar_t__ ack_epoch; int bytes_in_flight; } ;
typedef TYPE_1__ quicly_sent_packet_t ;


 int QUICLY_SENTMAP_EVENT_EXPIRED ;
 scalar_t__ UINT64_MAX ;
 int assert (int) ;
 int num_blocks (int *) ;
 int ok (int) ;
 int on_acked ;
 scalar_t__ on_acked_ackcnt ;
 int on_acked_callcnt ;
 int quicly_sentmap_allocate (int *,int ) ;
 int quicly_sentmap_commit (int *,int) ;
 int quicly_sentmap_dispose (int *) ;
 TYPE_1__* quicly_sentmap_get (int *) ;
 int quicly_sentmap_init (int *) ;
 int quicly_sentmap_init_iter (int *,int *) ;
 int quicly_sentmap_prepare (int *,int,int,int ) ;
 int quicly_sentmap_skip (int *) ;
 int quicly_sentmap_update (int *,int *,int ,int *) ;

void test_sentmap(void)
{
    quicly_sentmap_t map;
    uint64_t at;
    size_t i;
    quicly_sentmap_iter_t iter;
    const quicly_sent_packet_t *sent;

    quicly_sentmap_init(&map);


    for (at = 0; at < 10; ++at) {
        for (i = 1; i <= 5; ++i) {
            quicly_sentmap_prepare(&map, at * 5 + i, at, 0);
            quicly_sentmap_allocate(&map, on_acked);
            quicly_sentmap_allocate(&map, on_acked);
            quicly_sentmap_commit(&map, 1);
        }
    }


    quicly_sentmap_init_iter(&map, &iter);
    for (at = 0; at < 10; ++at) {
        for (i = 1; i <= 5; ++i) {
            const quicly_sent_packet_t *sent = quicly_sentmap_get(&iter);
            ok(sent->packet_number == at * 5 + i);
            ok(sent->sent_at == at);
            ok(sent->ack_epoch == 0);
            ok(sent->bytes_in_flight == 1);
            quicly_sentmap_skip(&iter);
        }
    }
    ok(quicly_sentmap_get(&iter)->packet_number == UINT64_MAX);
    ok(num_blocks(&map) == 150 / 16 + 1);


    quicly_sentmap_init_iter(&map, &iter);
    while (quicly_sentmap_get(&iter)->packet_number <= 10)
        quicly_sentmap_skip(&iter);
    assert(quicly_sentmap_get(&iter)->packet_number == 11);
    while (quicly_sentmap_get(&iter)->packet_number <= 40)
        quicly_sentmap_update(&map, &iter, QUICLY_SENTMAP_EVENT_EXPIRED, ((void*)0));
    ok(on_acked_callcnt == 30 * 4);
    ok(on_acked_ackcnt == 0);

    size_t cnt = 0;
    for (quicly_sentmap_init_iter(&map, &iter); (sent = quicly_sentmap_get(&iter))->packet_number != UINT64_MAX;
         quicly_sentmap_skip(&iter)) {
        ok(sent->bytes_in_flight != 0);
        ok(sent->packet_number <= 10 || 40 < sent->packet_number);
        ++cnt;
    }
    ok(cnt == 20);
    ok(num_blocks(&map) == 30 / 16 + 1 + 1 + 30 / 16 + 1);

    quicly_sentmap_dispose(&map);
}
