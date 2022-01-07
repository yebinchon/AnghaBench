
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ date_spec_hr; } ;
struct TYPE_4__ {int date; int time; } ;
typedef TYPE_1__ GLogItem ;
typedef int GKeyData ;


 TYPE_3__ conf ;
 int get_kdata (int *,int ,int ) ;
 int set_spec_visitor_key (int *,int ) ;

__attribute__((used)) static int
gen_visitor_key (GKeyData * kdata, GLogItem * logitem)
{
  if (!logitem->date || !logitem->time)
    return 1;


  if (conf.date_spec_hr)
    set_spec_visitor_key (&logitem->date, logitem->time);

  get_kdata (kdata, logitem->date, logitem->date);

  return 0;
}
