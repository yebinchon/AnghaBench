
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int checkout_data ;
struct TYPE_3__ {scalar_t__ theirs; scalar_t__ ours; scalar_t__ ancestor; } ;
typedef TYPE_1__ checkout_conflictdata ;


 int checkout_conflict_add (int *,scalar_t__) ;

__attribute__((used)) static int checkout_conflict_update_index(
 checkout_data *data,
 checkout_conflictdata *conflict)
{
 int error = 0;

 if (conflict->ancestor)
  error = checkout_conflict_add(data, conflict->ancestor);

 if (!error && conflict->ours)
  error = checkout_conflict_add(data, conflict->ours);

 if (!error && conflict->theirs)
  error = checkout_conflict_add(data, conflict->theirs);

 return error;
}
