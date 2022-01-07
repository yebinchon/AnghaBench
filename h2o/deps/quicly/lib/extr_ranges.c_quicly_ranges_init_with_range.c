
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int quicly_ranges_t ;


 int insert_at (int *,int ,int ,int ) ;
 int quicly_ranges_init (int *) ;

int quicly_ranges_init_with_range(quicly_ranges_t *ranges, uint64_t start, uint64_t end)
{
    quicly_ranges_init(ranges);
    return insert_at(ranges, start, end, 0);
}
