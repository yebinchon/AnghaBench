
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int checkout_data ;
struct TYPE_4__ {int theirs; int ours; } ;
typedef TYPE_1__ checkout_conflictdata ;


 int checkout_write_entry (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int checkout_write_entries(
 checkout_data *data,
 checkout_conflictdata *conflict)
{
 int error = 0;

 if ((error = checkout_write_entry(data, conflict, conflict->ours)) >= 0)
  error = checkout_write_entry(data, conflict, conflict->theirs);

 return error;
}
