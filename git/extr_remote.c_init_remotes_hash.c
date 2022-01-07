
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmpfn; } ;


 int hashmap_init (TYPE_1__*,int ,int *,int ) ;
 TYPE_1__ remotes_hash ;
 int remotes_hash_cmp ;

__attribute__((used)) static inline void init_remotes_hash(void)
{
 if (!remotes_hash.cmpfn)
  hashmap_init(&remotes_hash, remotes_hash_cmp, ((void*)0), 0);
}
