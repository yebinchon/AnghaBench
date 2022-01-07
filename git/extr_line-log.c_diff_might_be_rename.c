
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__** queue; } ;
struct TYPE_3__ {int one; } ;


 int DIFF_FILE_VALID (int ) ;
 TYPE_2__ diff_queued_diff ;

__attribute__((used)) static inline int diff_might_be_rename(void)
{
 int i;
 for (i = 0; i < diff_queued_diff.nr; i++)
  if (!DIFF_FILE_VALID(diff_queued_diff.queue[i]->one)) {


   return 1;
  }
 return 0;
}
