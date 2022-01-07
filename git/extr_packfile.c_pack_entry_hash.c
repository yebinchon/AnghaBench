
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int dummy; } ;
typedef scalar_t__ off_t ;



__attribute__((used)) static unsigned int pack_entry_hash(struct packed_git *p, off_t base_offset)
{
 unsigned int hash;

 hash = (unsigned int)(intptr_t)p + (unsigned int)base_offset;
 hash += (hash >> 8) + (hash >> 16);
 return hash;
}
