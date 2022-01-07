
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {unsigned long len; int buf; } ;
struct cache_entry {int oid; int name; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct strbuf STRBUF_INIT ;
 int free (void*) ;
 int memcmp (void*,int ,unsigned long) ;
 void* read_object_file (int *,int*,unsigned long*) ;
 scalar_t__ strbuf_readlink (struct strbuf*,int ,size_t) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int ce_compare_link(const struct cache_entry *ce, size_t expected_size)
{
 int match = -1;
 void *buffer;
 unsigned long size;
 enum object_type type;
 struct strbuf sb = STRBUF_INIT;

 if (strbuf_readlink(&sb, ce->name, expected_size))
  return -1;

 buffer = read_object_file(&ce->oid, &type, &size);
 if (buffer) {
  if (size == sb.len)
   match = memcmp(buffer, sb.buf, size);
  free(buffer);
 }
 strbuf_release(&sb);
 return match;
}
