
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int rawsz; } ;


 int strbuf_add (struct strbuf*,unsigned char const*,int ) ;
 int strbuf_addf (struct strbuf*,char*,unsigned int,unsigned int,char const*,char) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void write_tree_entry(struct strbuf *buf, unsigned int mode,
  const char *path, unsigned int path_len, const
  unsigned char *hash)
{
 strbuf_addf(buf, "%o %.*s%c", mode, path_len, path, '\0');
 strbuf_add(buf, hash, the_hash_algo->rawsz);
}
