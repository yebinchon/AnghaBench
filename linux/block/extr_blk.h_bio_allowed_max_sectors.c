
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int UINT_MAX ;
 int queue_logical_block_size (struct request_queue*) ;
 int round_down (int ,int ) ;

__attribute__((used)) static inline unsigned int bio_allowed_max_sectors(struct request_queue *q)
{
 return round_down(UINT_MAX, queue_logical_block_size(q)) >> 9;
}
