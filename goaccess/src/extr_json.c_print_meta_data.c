
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ json_pretty_print; } ;
struct TYPE_4__ {int ht_size; int module; } ;
typedef int GJSON ;
typedef TYPE_1__ GHolder ;


 TYPE_3__ conf ;
 int pclose_obj (int *,int,int ) ;
 int pmeta_data_avgts (int *,int ,int) ;
 int pmeta_data_bw (int *,int ,int) ;
 int pmeta_data_cumts (int *,int ,int) ;
 int pmeta_data_hits (int *,int ,int) ;
 int pmeta_data_maxts (int *,int ,int) ;
 int pmeta_data_unique (int *,int ,int) ;
 int pmeta_data_visitors (int *,int ,int) ;
 int popen_obj_attr (int *,char*,int) ;

__attribute__((used)) static void
print_meta_data (GJSON * json, GHolder * h, int sp)
{
  int isp = 0, iisp = 0;

  if (conf.json_pretty_print)
    isp = sp + 1, iisp = sp + 2;

  popen_obj_attr (json, "metadata", isp);

  pmeta_data_avgts (json, h->module, iisp);
  pmeta_data_cumts (json, h->module, iisp);
  pmeta_data_maxts (json, h->module, iisp);
  pmeta_data_bw (json, h->module, iisp);
  pmeta_data_visitors (json, h->module, iisp);
  pmeta_data_hits (json, h->module, iisp);
  pmeta_data_unique (json, h->ht_size, iisp);

  pclose_obj (json, isp, 0);
}
