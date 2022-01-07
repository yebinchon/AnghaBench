
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_service_queue {int * queued; } ;
struct throtl_grp {struct throtl_service_queue service_queue; } ;
struct bio {int dummy; } ;


 size_t READ ;
 size_t WRITE ;
 int bio_data_dir (struct bio*) ;
 int tg_dispatch_one_bio (struct throtl_grp*,int ) ;
 scalar_t__ tg_may_dispatch (struct throtl_grp*,struct bio*,int *) ;
 int throtl_grp_quantum ;
 struct bio* throtl_peek_queued (int *) ;

__attribute__((used)) static int throtl_dispatch_tg(struct throtl_grp *tg)
{
 struct throtl_service_queue *sq = &tg->service_queue;
 unsigned int nr_reads = 0, nr_writes = 0;
 unsigned int max_nr_reads = throtl_grp_quantum*3/4;
 unsigned int max_nr_writes = throtl_grp_quantum - max_nr_reads;
 struct bio *bio;



 while ((bio = throtl_peek_queued(&sq->queued[READ])) &&
        tg_may_dispatch(tg, bio, ((void*)0))) {

  tg_dispatch_one_bio(tg, bio_data_dir(bio));
  nr_reads++;

  if (nr_reads >= max_nr_reads)
   break;
 }

 while ((bio = throtl_peek_queued(&sq->queued[WRITE])) &&
        tg_may_dispatch(tg, bio, ((void*)0))) {

  tg_dispatch_one_bio(tg, bio_data_dir(bio));
  nr_writes++;

  if (nr_writes >= max_nr_writes)
   break;
 }

 return nr_reads + nr_writes;
}
