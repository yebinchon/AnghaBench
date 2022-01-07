
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sh_type; int sh_size; int sh_offset; } ;
struct section {TYPE_2__* reltab; TYPE_1__ shdr; } ;
struct TYPE_6__ {void* r_addend; void* r_info; int r_offset; } ;
typedef int FILE ;
typedef TYPE_2__ Elf_Rel ;


 int SEEK_SET ;
 scalar_t__ SHT_REL_TYPE ;
 int die (char*,int,...) ;
 int elf_addr_to_cpu (int ) ;
 void* elf_xword_to_cpu (void*) ;
 int errno ;
 int fread (TYPE_2__*,int,int,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 TYPE_2__* malloc (int) ;
 struct section* secs ;
 int shnum ;
 int strerror (int ) ;

__attribute__((used)) static void read_relocs(FILE *fp)
{
 int i,j;
 for (i = 0; i < shnum; i++) {
  struct section *sec = &secs[i];
  if (sec->shdr.sh_type != SHT_REL_TYPE) {
   continue;
  }
  sec->reltab = malloc(sec->shdr.sh_size);
  if (!sec->reltab) {
   die("malloc of %d bytes for relocs failed\n",
    sec->shdr.sh_size);
  }
  if (fseek(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
   die("Seek to %d failed: %s\n",
    sec->shdr.sh_offset, strerror(errno));
  }
  if (fread(sec->reltab, 1, sec->shdr.sh_size, fp)
      != sec->shdr.sh_size) {
   die("Cannot read symbol table: %s\n",
    strerror(errno));
  }
  for (j = 0; j < sec->shdr.sh_size/sizeof(Elf_Rel); j++) {
   Elf_Rel *rel = &sec->reltab[j];
   rel->r_offset = elf_addr_to_cpu(rel->r_offset);
   rel->r_info = elf_xword_to_cpu(rel->r_info);

   rel->r_addend = elf_xword_to_cpu(rel->r_addend);

  }
 }
}
