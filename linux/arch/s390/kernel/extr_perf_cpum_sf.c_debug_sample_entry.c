
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_trailer_entry {int f; } ;
struct hws_basic_entry {int def; } ;


 int debug_sprintf_event (int ,int,char*,int ,int ,struct hws_basic_entry*) ;
 int sfdbg ;

__attribute__((used)) static void debug_sample_entry(struct hws_basic_entry *sample,
          struct hws_trailer_entry *te)
{
 debug_sprintf_event(sfdbg, 4, "hw_collect_samples: Found unknown "
       "sampling data entry: te->f=%i basic.def=%04x "
       "(%p)\n",
       te->f, sample->def, sample);
}
