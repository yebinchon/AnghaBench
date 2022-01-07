
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct tffs_entry_header {int dummy; } ;
struct tffs_entry {int * val; struct tffs_entry_header* header; } ;



__attribute__((used)) static void parse_entry(uint8_t *buffer, uint32_t pos,
   struct tffs_entry *entry)
{
 entry->header = (struct tffs_entry_header *) &buffer[pos];
 entry->val = &buffer[pos + sizeof(struct tffs_entry_header)];
}
