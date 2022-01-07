
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_msg_entry {int written; } ;



__attribute__((used)) static int merge_msg_entry_written(
 const struct merge_msg_entry *merge_msg_entry)
{
 return (merge_msg_entry->written == 1);
}
