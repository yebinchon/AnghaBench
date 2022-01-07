
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct st_quicly_pn_space_t {scalar_t__ unacked_count; scalar_t__ next_expected_packet_number; int largest_pn_received_at; int ack_queue; } ;


 int INT64_MAX ;
 struct st_quicly_pn_space_t* malloc (size_t) ;
 int memset (int *,int ,size_t) ;
 int quicly_ranges_init (int *) ;

__attribute__((used)) static struct st_quicly_pn_space_t *alloc_pn_space(size_t sz)
{
    struct st_quicly_pn_space_t *space;

    if ((space = malloc(sz)) == ((void*)0))
        return ((void*)0);

    quicly_ranges_init(&space->ack_queue);
    space->largest_pn_received_at = INT64_MAX;
    space->next_expected_packet_number = 0;
    space->unacked_count = 0;
    if (sz != sizeof(*space))
        memset((uint8_t *)space + sizeof(*space), 0, sz - sizeof(*space));

    return space;
}
