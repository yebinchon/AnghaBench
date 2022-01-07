
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attention; int lock; int write_queue; int read_queue; } ;
struct pktcdvd_device {int wqueue; TYPE_1__ iosched; } ;
struct bio {int dummy; } ;


 scalar_t__ READ ;
 int atomic_set (int *,int) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_list_add (int *,struct bio*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void pkt_queue_bio(struct pktcdvd_device *pd, struct bio *bio)
{
 spin_lock(&pd->iosched.lock);
 if (bio_data_dir(bio) == READ)
  bio_list_add(&pd->iosched.read_queue, bio);
 else
  bio_list_add(&pd->iosched.write_queue, bio);
 spin_unlock(&pd->iosched.lock);

 atomic_set(&pd->iosched.attention, 1);
 wake_up(&pd->wqueue);
}
