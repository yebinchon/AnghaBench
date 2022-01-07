
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct object_id {unsigned int* hash; } ;
struct TYPE_2__ {int rawsz; } ;


 int strbuf_addch (struct strbuf*,char) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void fill_loose_path(struct strbuf *buf, const struct object_id *oid)
{
 int i;
 for (i = 0; i < the_hash_algo->rawsz; i++) {
  static char hex[] = "0123456789abcdef";
  unsigned int val = oid->hash[i];
  strbuf_addch(buf, hex[val >> 4]);
  strbuf_addch(buf, hex[val & 0xf]);
  if (!i)
   strbuf_addch(buf, '/');
 }
}
