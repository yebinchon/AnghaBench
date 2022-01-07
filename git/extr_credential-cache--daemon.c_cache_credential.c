
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential_cache_entry {scalar_t__ expiration; int item; } ;
struct credential {int dummy; } ;


 int ALLOC_GROW (struct credential_cache_entry*,scalar_t__,int ) ;
 struct credential_cache_entry* entries ;
 int entries_alloc ;
 scalar_t__ entries_nr ;
 int memcpy (int *,struct credential*,int) ;
 int memset (struct credential*,int ,int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void cache_credential(struct credential *c, int timeout)
{
 struct credential_cache_entry *e;

 ALLOC_GROW(entries, entries_nr + 1, entries_alloc);
 e = &entries[entries_nr++];


 memcpy(&e->item, c, sizeof(*c));
 memset(c, 0, sizeof(*c));
 e->expiration = time(((void*)0)) + timeout;
}
