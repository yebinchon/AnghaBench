#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  quicly_sentmap_t ;
typedef  int /*<<< orphan*/  quicly_sentmap_iter_t ;
struct TYPE_3__ {int packet_number; int sent_at; scalar_t__ ack_epoch; int bytes_in_flight; } ;
typedef  TYPE_1__ quicly_sent_packet_t ;

/* Variables and functions */
 int /*<<< orphan*/  QUICLY_SENTMAP_EVENT_EXPIRED ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  on_acked ; 
 scalar_t__ on_acked_ackcnt ; 
 int on_acked_callcnt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
    quicly_sentmap_t map;
    uint64_t at;
    size_t i;
    quicly_sentmap_iter_t iter;
    const quicly_sent_packet_t *sent;

    FUNC7(&map);

    /* save 50 packets, with 2 frames each */
    for (at = 0; at < 10; ++at) {
        for (i = 1; i <= 5; ++i) {
            FUNC9(&map, at * 5 + i, at, 0);
            FUNC3(&map, on_acked);
            FUNC3(&map, on_acked);
            FUNC4(&map, 1);
        }
    }

    /* check all acks */
    FUNC8(&map, &iter);
    for (at = 0; at < 10; ++at) {
        for (i = 1; i <= 5; ++i) {
            const quicly_sent_packet_t *sent = FUNC6(&iter);
            FUNC2(sent->packet_number == at * 5 + i);
            FUNC2(sent->sent_at == at);
            FUNC2(sent->ack_epoch == 0);
            FUNC2(sent->bytes_in_flight == 1);
            FUNC10(&iter);
        }
    }
    FUNC2(FUNC6(&iter)->packet_number == UINT64_MAX);
    FUNC2(FUNC1(&map) == 150 / 16 + 1);

    /* pop acks between 11 <= packet_number <= 40 */
    FUNC8(&map, &iter);
    while (FUNC6(&iter)->packet_number <= 10)
        FUNC10(&iter);
    FUNC0(FUNC6(&iter)->packet_number == 11);
    while (FUNC6(&iter)->packet_number <= 40)
        FUNC11(&map, &iter, QUICLY_SENTMAP_EVENT_EXPIRED, NULL);
    FUNC2(on_acked_callcnt == 30 * 4);
    FUNC2(on_acked_ackcnt == 0);

    size_t cnt = 0;
    for (FUNC8(&map, &iter); (sent = FUNC6(&iter))->packet_number != UINT64_MAX;
         FUNC10(&iter)) {
        FUNC2(sent->bytes_in_flight != 0);
        FUNC2(sent->packet_number <= 10 || 40 < sent->packet_number);
        ++cnt;
    }
    FUNC2(cnt == 20);
    FUNC2(FUNC1(&map) == 30 / 16 + 1 + 1 + 30 / 16 + 1);

    FUNC5(&map);
}