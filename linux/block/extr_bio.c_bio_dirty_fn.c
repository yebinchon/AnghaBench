
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct bio {struct bio* bi_private; } ;


 struct bio* bio_dirty_list ;
 int bio_dirty_lock ;
 int bio_put (struct bio*) ;
 int bio_release_pages (struct bio*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void bio_dirty_fn(struct work_struct *work)
{
 struct bio *bio, *next;

 spin_lock_irq(&bio_dirty_lock);
 next = bio_dirty_list;
 bio_dirty_list = ((void*)0);
 spin_unlock_irq(&bio_dirty_lock);

 while ((bio = next) != ((void*)0)) {
  next = bio->bi_private;

  bio_release_pages(bio, 1);
  bio_put(bio);
 }
}
