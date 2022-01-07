
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* metrics; struct TYPE_7__* next; } ;
struct TYPE_6__ {int size; TYPE_3__* head; } ;
struct TYPE_5__ {size_t id; int data; } ;
typedef TYPE_2__ GSubList ;
typedef TYPE_3__ GSubItem ;
typedef int GJSON ;


 int NL ;
 int TAB ;
 int escape_json_output (int *,int ) ;
 int nlines ;
 int pjson (int *,char*,int,int ,...) ;

__attribute__((used)) static void
print_json_host_geo (GJSON * json, GSubList * sl, int iisp)
{
  GSubItem *iter;
  int i;
  static const char *key[] = {
    "country",
    "city",
    "hostname",
  };

  pjson (json, ",%.*s", nlines, NL);


  for (i = 0, iter = sl->head; iter; iter = iter->next, i++) {
    pjson (json, "%.*s\"%s\": \"", iisp, TAB, key[iter->metrics->id]);
    escape_json_output (json, iter->metrics->data);
    pjson (json, (i != sl->size - 1) ? "\",%.*s" : "\"", nlines, NL);
  }
}
