
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rerere_id {TYPE_1__* collection; } ;
struct TYPE_2__ {int hash; } ;


 char const* hash_to_hex (int ) ;

__attribute__((used)) static const char *rerere_id_hex(const struct rerere_id *id)
{
 return hash_to_hex(id->collection->hash);
}
