
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct n2rng {TYPE_1__* op; TYPE_2__* data; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int dev; } ;


 int ENODEV ;




 int RNG_v1_SELFTEST_VAL ;
 int RNG_v2_SELFTEST_VAL ;
 int SELFTEST_LOOPS_MAX ;
 int SELFTEST_MATCH_GOAL ;
 int SELFTEST_POLY ;
 int advance_polynomial (int ,int ,int) ;
 int dev_err (int *,char*,unsigned long) ;
 int dev_info (int *,char*,unsigned long) ;
 int n2rng_dump_test_buffer (struct n2rng*) ;
 scalar_t__ n2rng_test_buffer_find (struct n2rng*,int ) ;

__attribute__((used)) static int n2rng_check_selftest_buffer(struct n2rng *np, unsigned long unit)
{
 u64 val;
 int err, matches, limit;

 switch (np->data->id) {
 case 129:
 case 128:
 case 131:
 case 130:
  val = RNG_v1_SELFTEST_VAL;
  break;
 default:
  val = RNG_v2_SELFTEST_VAL;
  break;
 }

 matches = 0;
 for (limit = 0; limit < SELFTEST_LOOPS_MAX; limit++) {
  matches += n2rng_test_buffer_find(np, val);
  if (matches >= SELFTEST_MATCH_GOAL)
   break;
  val = advance_polynomial(SELFTEST_POLY, val, 1);
 }

 err = 0;
 if (limit >= SELFTEST_LOOPS_MAX) {
  err = -ENODEV;
  dev_err(&np->op->dev, "Selftest failed on unit %lu\n", unit);
  n2rng_dump_test_buffer(np);
 } else
  dev_info(&np->op->dev, "Selftest passed on unit %lu\n", unit);

 return err;
}
