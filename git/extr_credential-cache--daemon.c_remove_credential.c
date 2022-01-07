
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential_cache_entry {scalar_t__ expiration; } ;
struct credential {int dummy; } ;


 struct credential_cache_entry* lookup_credential (struct credential const*) ;

__attribute__((used)) static void remove_credential(const struct credential *c)
{
 struct credential_cache_entry *e;

 e = lookup_credential(c);
 if (e)
  e->expiration = 0;
}
