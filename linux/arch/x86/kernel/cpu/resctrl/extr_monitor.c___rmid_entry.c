
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rmid_entry {size_t rmid; } ;


 int WARN_ON (int) ;
 struct rmid_entry* rmid_ptrs ;

__attribute__((used)) static inline struct rmid_entry *__rmid_entry(u32 rmid)
{
 struct rmid_entry *entry;

 entry = &rmid_ptrs[rmid];
 WARN_ON(entry->rmid != rmid);

 return entry;
}
