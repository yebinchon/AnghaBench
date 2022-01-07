
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_max_streams_t {int blocked_sender; scalar_t__ count; } ;


 int quicly_maxsender_init (int *,int) ;

__attribute__((used)) static void init_max_streams(struct st_quicly_max_streams_t *m)
{
    m->count = 0;
    quicly_maxsender_init(&m->blocked_sender, -1);
}
