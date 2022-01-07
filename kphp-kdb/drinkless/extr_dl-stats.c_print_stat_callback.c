
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* desc; char* age; char* sum; char* avg; char* max_val; char* max_desc; } ;
typedef TYPE_1__ stat_text_t ;


 int fprintf (int ,char*,char*,char*,char*,char*,char*,char*) ;
 int stderr ;

void print_stat_callback (stat_text_t *s) {
  fprintf (stderr, "%s %s [sum = %s] [avg = %s] [max = %s|%s]\n", s->desc, s->age, s->sum, s->avg, s->max_val, s->max_desc);
}
