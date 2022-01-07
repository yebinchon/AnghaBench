
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct pack_info {unsigned char* pack_name; scalar_t__ expired; } ;
struct hashfile {int dummy; } ;
typedef int padding ;


 int BUG (char*,unsigned char*,unsigned char*) ;
 int MIDX_CHUNK_ALIGNMENT ;
 int hashwrite (struct hashfile*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ strcmp (unsigned char*,unsigned char*) ;
 int strlen (unsigned char*) ;

__attribute__((used)) static size_t write_midx_pack_names(struct hashfile *f,
        struct pack_info *info,
        uint32_t num_packs)
{
 uint32_t i;
 unsigned char padding[MIDX_CHUNK_ALIGNMENT];
 size_t written = 0;

 for (i = 0; i < num_packs; i++) {
  size_t writelen;

  if (info[i].expired)
   continue;

  if (i && strcmp(info[i].pack_name, info[i - 1].pack_name) <= 0)
   BUG("incorrect pack-file order: %s before %s",
       info[i - 1].pack_name,
       info[i].pack_name);

  writelen = strlen(info[i].pack_name) + 1;
  hashwrite(f, info[i].pack_name, writelen);
  written += writelen;
 }


 i = MIDX_CHUNK_ALIGNMENT - (written % MIDX_CHUNK_ALIGNMENT);
 if (i < MIDX_CHUNK_ALIGNMENT) {
  memset(padding, 0, sizeof(padding));
  hashwrite(f, padding, i);
  written += i;
 }

 return written;
}
