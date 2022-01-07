
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlc_call {int dummy; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ strcmp (char*,int ) ;
 TYPE_1__* wlc_calls ;
 int wlc_calls_size ;

__attribute__((used)) static struct wlc_call *find_cmd(char *name)
{
 int found = 0, i = 0;

 while (!found && (i < wlc_calls_size)) {
  if (strcmp(name, wlc_calls[i].name) == 0)
   found = 1;
  else
   i++;
 }

 return (struct wlc_call *) (found ? &wlc_calls[i] : ((void*)0));
}
