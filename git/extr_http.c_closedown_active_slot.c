
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct active_request_slot {scalar_t__ in_use; } ;


 int active_requests ;

__attribute__((used)) static void closedown_active_slot(struct active_request_slot *slot)
{
 active_requests--;
 slot->in_use = 0;
}
