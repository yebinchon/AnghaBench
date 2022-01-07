
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ json_pretty_print; int serve_usecs; } ;
typedef int GModule ;
typedef int GJSON ;


 TYPE_1__ conf ;
 int ht_get_meta_data (int ,char*) ;
 int pclose_obj (int *,int,int ) ;
 int popen_obj_attr (int *,char*,int) ;
 int pskeyu64val (int *,char*,int,int,int) ;

__attribute__((used)) static void
pmeta_data_avgts (GJSON * json, GModule module, int sp)
{
  int isp = 0;
  uint64_t avg = 0, hits = 0, cumts = 0;

  if (!conf.serve_usecs)
    return;


  if (conf.json_pretty_print)
    isp = sp + 1;

  cumts = ht_get_meta_data (module, "cumts");
  hits = ht_get_meta_data (module, "hits");
  if (hits > 0)
    avg = cumts / hits;

  popen_obj_attr (json, "avgts", sp);
  pskeyu64val (json, "avg", avg, isp, 1);
  pclose_obj (json, sp, 0);
}
