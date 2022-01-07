
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {TYPE_1__* items; } ;
struct TYPE_2__ {int string; } ;


 int PACKDIR_FILE_IDX ;
 int PACKDIR_FILE_PACK ;
 int report_garbage (int,int ) ;

__attribute__((used)) static void report_helper(const struct string_list *list,
     int seen_bits, int first, int last)
{
 if (seen_bits == (PACKDIR_FILE_PACK|PACKDIR_FILE_IDX))
  return;

 for (; first < last; first++)
  report_garbage(seen_bits, list->items[first].string);
}
