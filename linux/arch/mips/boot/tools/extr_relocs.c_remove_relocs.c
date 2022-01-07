
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sh_type; } ;
struct section {int shdr_offset; TYPE_1__ shdr; } ;
typedef int shdr ;
struct TYPE_8__ {int e_shnum; } ;
struct TYPE_7__ {scalar_t__ sh_size; } ;
typedef int FILE ;
typedef TYPE_2__ Elf_Shdr ;


 int SEEK_SET ;
 scalar_t__ SHT_REL_TYPE ;
 int die (char*,int,int,...) ;
 TYPE_5__ ehdr ;
 int errno ;
 int fread (TYPE_2__*,int,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int fwrite (TYPE_2__*,int,int,int *) ;
 struct section* secs ;
 int strerror (int ) ;

__attribute__((used)) static void remove_relocs(FILE *fp)
{
 int i;
 Elf_Shdr shdr;

 for (i = 0; i < ehdr.e_shnum; i++) {
  struct section *sec = &secs[i];

  if (sec->shdr.sh_type != SHT_REL_TYPE)
   continue;

  if (fseek(fp, sec->shdr_offset, SEEK_SET) < 0)
   die("Seek to %d failed: %s\n",
       sec->shdr_offset, strerror(errno));

  if (fread(&shdr, sizeof(shdr), 1, fp) != 1)
   die("Cannot read ELF section headers %d/%d: %s\n",
       i, ehdr.e_shnum, strerror(errno));





  shdr.sh_size = 0;

  if (fseek(fp, sec->shdr_offset, SEEK_SET) < 0)
   die("Seek to %d failed: %s\n",
       sec->shdr_offset, strerror(errno));

  if (fwrite(&shdr, sizeof(shdr), 1, fp) != 1)
   die("Cannot write ELF section headers %d/%d: %s\n",
       i, ehdr.e_shnum, strerror(errno));
 }
}
