
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_trailer_entry {int clock_base; int progusage2; } ;


 int memcpy (int *,int *,int) ;
 int * tod_clock_base ;
 scalar_t__ trailer_entry_ptr (unsigned long) ;

__attribute__((used)) static void aux_sdb_init(unsigned long sdb)
{
 struct hws_trailer_entry *te;

 te = (struct hws_trailer_entry *)trailer_entry_ptr(sdb);


 te->clock_base = 1;
 memcpy(&te->progusage2, &tod_clock_base[1], 8);
}
