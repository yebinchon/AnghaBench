
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sh_type; scalar_t__ sh_size; int sh_offset; } ;
struct section {TYPE_1__ shdr; int strtab; } ;
typedef int FILE ;


 int SEEK_SET ;
 scalar_t__ SHT_STRTAB ;
 int die (char*,scalar_t__,...) ;
 int errno ;
 scalar_t__ fread (int ,int,scalar_t__,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int malloc (scalar_t__) ;
 struct section* secs ;
 int shnum ;
 scalar_t__ strerror (int ) ;

__attribute__((used)) static void read_strtabs(FILE *fp)
{
 int i;
 for (i = 0; i < shnum; i++) {
  struct section *sec = &secs[i];
  if (sec->shdr.sh_type != SHT_STRTAB) {
   continue;
  }
  sec->strtab = malloc(sec->shdr.sh_size);
  if (!sec->strtab) {
   die("malloc of %d bytes for strtab failed\n",
    sec->shdr.sh_size);
  }
  if (fseek(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
   die("Seek to %d failed: %s\n",
    sec->shdr.sh_offset, strerror(errno));
  }
  if (fread(sec->strtab, 1, sec->shdr.sh_size, fp)
      != sec->shdr.sh_size) {
   die("Cannot read symbol table: %s\n",
    strerror(errno));
  }
 }
}
