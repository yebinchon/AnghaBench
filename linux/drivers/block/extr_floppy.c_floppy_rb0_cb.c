
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb0_cbdata {int drive; int complete; } ;
struct bio {scalar_t__ bi_status; scalar_t__ bi_private; } ;
struct TYPE_2__ {int flags; } ;


 int FD_OPEN_SHOULD_FAIL_BIT ;
 TYPE_1__* UDRS ;
 int complete (int *) ;
 int pr_info (char*,scalar_t__) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void floppy_rb0_cb(struct bio *bio)
{
 struct rb0_cbdata *cbdata = (struct rb0_cbdata *)bio->bi_private;
 int drive = cbdata->drive;

 if (bio->bi_status) {
  pr_info("floppy: error %d while reading block 0\n",
   bio->bi_status);
  set_bit(FD_OPEN_SHOULD_FAIL_BIT, &UDRS->flags);
 }
 complete(&cbdata->complete);
}
