
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_qnode {int tg; int node; int bios; } ;
struct list_head {int dummy; } ;
struct bio {int dummy; } ;


 int bio_list_add (int *,struct bio*) ;
 int blkg_get (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 scalar_t__ list_empty (int *) ;
 int tg_to_blkg (int ) ;

__attribute__((used)) static void throtl_qnode_add_bio(struct bio *bio, struct throtl_qnode *qn,
     struct list_head *queued)
{
 bio_list_add(&qn->bios, bio);
 if (list_empty(&qn->node)) {
  list_add_tail(&qn->node, queued);
  blkg_get(tg_to_blkg(qn->tg));
 }
}
