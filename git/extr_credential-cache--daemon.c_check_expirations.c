
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ timestamp_t ;
struct TYPE_4__ {scalar_t__ expiration; int item; } ;


 scalar_t__ TIME_MAX ;
 int credential_clear (int *) ;
 TYPE_1__* entries ;
 int entries_nr ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static timestamp_t check_expirations(void)
{
 static timestamp_t wait_for_entry_until;
 int i = 0;
 timestamp_t now = time(((void*)0));
 timestamp_t next = TIME_MAX;






 if (!wait_for_entry_until)
  wait_for_entry_until = now + 30;

 while (i < entries_nr) {
  if (entries[i].expiration <= now) {
   entries_nr--;
   credential_clear(&entries[i].item);
   if (i != entries_nr)
    memcpy(&entries[i], &entries[entries_nr], sizeof(*entries));





   wait_for_entry_until = now + 30;
  }
  else {
   if (entries[i].expiration < next)
    next = entries[i].expiration;
   i++;
  }
 }

 if (!entries_nr) {
  if (wait_for_entry_until <= now)
   return 0;
  next = wait_for_entry_until;
 }

 return next - now;
}
