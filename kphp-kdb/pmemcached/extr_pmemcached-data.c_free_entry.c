
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_entry_t ;


 int zzfree (int *,int) ;

void free_entry (hash_entry_t *entry) {
  zzfree (entry, sizeof (hash_entry_t));
}
