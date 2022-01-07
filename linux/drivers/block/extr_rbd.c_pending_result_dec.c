
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_result {scalar_t__ num_pending; int result; } ;


 int rbd_assert (int) ;

__attribute__((used)) static bool pending_result_dec(struct pending_result *pending, int *result)
{
 rbd_assert(pending->num_pending > 0);

 if (*result && !pending->result)
  pending->result = *result;
 if (--pending->num_pending)
  return 0;

 *result = pending->result;
 return 1;
}
