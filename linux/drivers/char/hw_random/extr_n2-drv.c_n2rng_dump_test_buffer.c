
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct n2rng {int * test_buffer; TYPE_1__* op; } ;
struct TYPE_2__ {int dev; } ;


 int SELFTEST_BUFFER_WORDS ;
 int dev_err (int *,char*,int,int ) ;

__attribute__((used)) static void n2rng_dump_test_buffer(struct n2rng *np)
{
 int i;

 for (i = 0; i < SELFTEST_BUFFER_WORDS; i++)
  dev_err(&np->op->dev, "Test buffer slot %d [0x%016llx]\n",
   i, np->test_buffer[i]);
}
