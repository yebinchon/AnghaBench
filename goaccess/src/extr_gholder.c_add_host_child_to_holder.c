
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int mutex; } ;
struct TYPE_9__ {size_t idx; int sub_items_size; TYPE_2__* items; int module; } ;
struct TYPE_8__ {char* sub_list; TYPE_1__* metrics; } ;
struct TYPE_7__ {char* data; } ;
typedef char GSubList ;
typedef int GMetrics ;
typedef TYPE_3__ GHolder ;


 int MTRC_ID_HOSTNAME ;
 int add_sub_item_back (char*,int ,int *) ;
 int dns_resolver (char*) ;
 int free (char*) ;
 TYPE_5__ gdns_thread ;
 char* ht_get_hostname (char*) ;
 char* new_gsublist () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int set_host_child_metrics (char*,int ,int **) ;
 int set_host_sub_list (TYPE_3__*,char*) ;

__attribute__((used)) static void
add_host_child_to_holder (GHolder * h)
{
  GMetrics *nmetrics;
  GSubList *sub_list = new_gsublist ();

  char *ip = h->items[h->idx].metrics->data;
  char *hostname = ((void*)0);
  int n = h->sub_items_size;


  set_host_sub_list (h, sub_list);

  pthread_mutex_lock (&gdns_thread.mutex);
  hostname = ht_get_hostname (ip);
  pthread_mutex_unlock (&gdns_thread.mutex);


  if (!hostname) {
    dns_resolver (ip);
  } else if (hostname) {
    set_host_child_metrics (hostname, MTRC_ID_HOSTNAME, &nmetrics);
    add_sub_item_back (sub_list, h->module, nmetrics);
    h->items[h->idx].sub_list = sub_list;
    h->sub_items_size++;
    free (hostname);
  }


  if (n == h->sub_items_size)
    free (sub_list);
}
