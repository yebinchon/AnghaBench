
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_pn_space_t {int ack_queue; } ;


 int free (struct st_quicly_pn_space_t*) ;
 int quicly_ranges_clear (int *) ;

__attribute__((used)) static void do_free_pn_space(struct st_quicly_pn_space_t *space)
{
    quicly_ranges_clear(&space->ack_queue);
    free(space);
}
