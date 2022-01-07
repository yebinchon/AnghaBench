
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nr; } ;
struct TYPE_6__ {int nr; } ;
struct TYPE_5__ {int nr; } ;
struct wt_status {int status_format; int repo; TYPE_1__ ignored; TYPE_3__ untracked; TYPE_2__ change; } ;


 int BUG (char*) ;






 int trace2_data_intmax (char*,int ,char*,int ) ;
 int trace2_region_enter (char*,char*,int ) ;
 int trace2_region_leave (char*,char*,int ) ;
 int wt_longstatus_print (struct wt_status*) ;
 int wt_porcelain_print (struct wt_status*) ;
 int wt_porcelain_v2_print (struct wt_status*) ;
 int wt_shortstatus_print (struct wt_status*) ;

void wt_status_print(struct wt_status *s)
{
 trace2_data_intmax("status", s->repo, "count/changed", s->change.nr);
 trace2_data_intmax("status", s->repo, "count/untracked",
      s->untracked.nr);
 trace2_data_intmax("status", s->repo, "count/ignored", s->ignored.nr);

 trace2_region_enter("status", "print", s->repo);

 switch (s->status_format) {
 case 129:
  wt_shortstatus_print(s);
  break;
 case 131:
  wt_porcelain_print(s);
  break;
 case 130:
  wt_porcelain_v2_print(s);
  break;
 case 128:
  BUG("finalize_deferred_config() should have been called");
  break;
 case 132:
 case 133:
  wt_longstatus_print(s);
  break;
 }

 trace2_region_leave("status", "print", s->repo);
}
