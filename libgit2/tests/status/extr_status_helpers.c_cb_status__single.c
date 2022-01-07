
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; unsigned int status; scalar_t__ debug; } ;
typedef TYPE_1__ status_entry_single ;


 int fprintf (int ,char*,int,char const*,unsigned int) ;
 int stderr ;

int cb_status__single(const char *p, unsigned int s, void *payload)
{
 status_entry_single *data = (status_entry_single *)payload;

 if (data->debug)
  fprintf(stderr, "%02d: %s (%04x)\n", data->count, p, s);

 data->count++;
 data->status = s;

 return 0;
}
