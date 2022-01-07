
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int min_nr; } ;
struct TYPE_3__ {scalar_t__ min_nr; } ;
struct bio_set {int front_pad; TYPE_2__ bio_pool; scalar_t__ rescue_workqueue; TYPE_1__ bvec_pool; } ;


 int BIOSET_NEED_BVECS ;
 int BIOSET_NEED_RESCUER ;
 int bioset_init (struct bio_set*,int ,int ,int) ;

int bioset_init_from_src(struct bio_set *bs, struct bio_set *src)
{
 int flags;

 flags = 0;
 if (src->bvec_pool.min_nr)
  flags |= BIOSET_NEED_BVECS;
 if (src->rescue_workqueue)
  flags |= BIOSET_NEED_RESCUER;

 return bioset_init(bs, src->bio_pool.min_nr, src->front_pad, flags);
}
