
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_query_heap_en {scalar_t__ cpu_time; int query; } ;


 int SEARCH_QUERY_HEAP_SIZE ;
 struct search_query_heap_en* SQH ;
 int SQH_SIZE ;
 int memcpy (struct search_query_heap_en*,struct search_query_heap_en*,int) ;
 scalar_t__ strlen (int ) ;
 int zzfree (int ,scalar_t__) ;

void search_query_heap_insert (struct search_query_heap_en *E) {
  if (SQH_SIZE == SEARCH_QUERY_HEAP_SIZE) {
    zzfree (SQH[1].query, strlen(SQH[1].query)+1);
    int i = 1;
    while (1) {
      int j = i << 1;
      if (j > SQH_SIZE) { break; }
      if (j < SQH_SIZE && SQH[j].cpu_time > SQH[j+1].cpu_time) { j++; }
      if (E->cpu_time <= SQH[j].cpu_time) { break; }
      memcpy (SQH + i, SQH + j, sizeof (*E));
      i = j;
    }
    memcpy (SQH + i, E, sizeof (*E));
  } else {
    int i = ++SQH_SIZE;
    while (i > 1) {
      int j = (i >> 1);
      if (SQH[j].cpu_time <= E->cpu_time) { break; }
      memcpy (SQH + i, SQH + j, sizeof (*E));
      i = j;
    }
    memcpy (SQH + i, E, sizeof (*E));
  }
}
