
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct strbuf {int dummy; } ;
struct index_entry_offset_table {int nr; TYPE_1__* entries; } ;
struct TYPE_2__ {int nr; int offset; } ;


 int IEOT_VERSION ;
 int put_be32 (int *,int ) ;
 int strbuf_add (struct strbuf*,int *,int) ;

__attribute__((used)) static void write_ieot_extension(struct strbuf *sb, struct index_entry_offset_table *ieot)
{
 uint32_t buffer;
 int i;


 put_be32(&buffer, IEOT_VERSION);
 strbuf_add(sb, &buffer, sizeof(uint32_t));


 for (i = 0; i < ieot->nr; i++) {


  put_be32(&buffer, ieot->entries[i].offset);
  strbuf_add(sb, &buffer, sizeof(uint32_t));


  put_be32(&buffer, ieot->entries[i].nr);
  strbuf_add(sb, &buffer, sizeof(uint32_t));
 }
}
