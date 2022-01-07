
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int has_geocountry; int has_geocity; scalar_t__ output_stdout; scalar_t__ enable_html_resolver; } ;
struct TYPE_8__ {size_t idx; int sub_items_size; TYPE_2__* items; int module; } ;
struct TYPE_7__ {int * sub_list; TYPE_1__* metrics; } ;
struct TYPE_6__ {char* data; } ;
typedef int GSubList ;
typedef int GMetrics ;
typedef TYPE_3__ GHolder ;


 int CITY_LEN ;
 int CONTINENT_LEN ;
 int COUNTRY_LEN ;
 int MTRC_ID_CITY ;
 int MTRC_ID_COUNTRY ;
 int MTRC_ID_HOSTNAME ;
 int add_sub_item_back (int *,int ,int *) ;
 TYPE_5__ conf ;
 int free (char*) ;
 char* reverse_ip (char*) ;
 int set_geolocation (char*,char*,char*,char*) ;
 int set_host_child_metrics (char*,int ,int **) ;

__attribute__((used)) static void
set_host_sub_list (GHolder * h, GSubList * sub_list)
{
  GMetrics *nmetrics;






  char *host = h->items[h->idx].metrics->data, *hostname = ((void*)0);
  if (conf.enable_html_resolver && conf.output_stdout) {
    hostname = reverse_ip (host);
    set_host_child_metrics (hostname, MTRC_ID_HOSTNAME, &nmetrics);
    add_sub_item_back (sub_list, h->module, nmetrics);
    h->items[h->idx].sub_list = sub_list;
    h->sub_items_size++;
    free (hostname);
  }
}
