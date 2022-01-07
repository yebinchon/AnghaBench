
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walker_data {int got_alternates; TYPE_1__* alt; } ;
struct walker {struct walker_data* data; int cleanup; int prefetch; int fetch_ref; int fetch; scalar_t__ corrupt_object_found; } ;
struct TYPE_2__ {char* base; int * next; int * packs; scalar_t__ got_indices; } ;


 int add_fill_function (struct walker*,int (*) (void*)) ;
 int cleanup ;
 int fetch ;
 int fetch_ref ;
 scalar_t__ fill_active_slot ;
 int prefetch ;
 int strlen (char*) ;
 void* xmalloc (int) ;
 char* xstrdup (char const*) ;

struct walker *get_http_walker(const char *url)
{
 char *s;
 struct walker_data *data = xmalloc(sizeof(struct walker_data));
 struct walker *walker = xmalloc(sizeof(struct walker));

 data->alt = xmalloc(sizeof(*data->alt));
 data->alt->base = xstrdup(url);
 for (s = data->alt->base + strlen(data->alt->base) - 1; *s == '/'; --s)
  *s = 0;

 data->alt->got_indices = 0;
 data->alt->packs = ((void*)0);
 data->alt->next = ((void*)0);
 data->got_alternates = -1;

 walker->corrupt_object_found = 0;
 walker->fetch = fetch;
 walker->fetch_ref = fetch_ref;
 walker->prefetch = prefetch;
 walker->cleanup = cleanup;
 walker->data = data;





 return walker;
}
