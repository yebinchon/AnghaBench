
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_saved_query {int dummy; } ;


 int finished_aio_queue ;
 int queue_add_finished_aio (int ,struct tl_saved_query*) ;

void add_finished_query (struct tl_saved_query *q) {
  finished_aio_queue = queue_add_finished_aio (finished_aio_queue, q);
}
