
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * expected_statuses; int line; int file; int * expected_paths; int entry_count; } ;
typedef TYPE_1__ status_entry_counts ;


 int clar__assert_equal (int ,int ,char*,int,char*,int ,...) ;

__attribute__((used)) static int cb_status__match(const char *p, unsigned int s, void *payload)
{
 status_entry_counts *counts = payload;
 int idx = counts->entry_count++;

 clar__assert_equal(
  counts->file, counts->line,
  "Status path mismatch", 1,
  "%s", counts->expected_paths[idx], p);

 clar__assert_equal(
  counts->file, counts->line,
  "Status code mismatch", 1,
  "%o", counts->expected_statuses[idx], s);

 return 0;
}
