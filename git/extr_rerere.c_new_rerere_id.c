
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_id {int dummy; } ;


 int hash_to_hex (unsigned char*) ;
 struct rerere_id* new_rerere_id_hex (int ) ;

__attribute__((used)) static struct rerere_id *new_rerere_id(unsigned char *hash)
{
 return new_rerere_id_hex(hash_to_hex(hash));
}
