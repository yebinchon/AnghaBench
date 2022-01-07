
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {size_t st_size; } ;
struct TYPE_2__ {int* e_ident; int e_type; int e_machine; } ;
typedef TYPE_1__ Elf32_Ehdr ;


 size_t EI_CLASS ;
 size_t EI_DATA ;




 int ELFMAG ;
 scalar_t__ EM_MIPS ;
 scalar_t__ ET_DYN ;
 int HOST_ORDER ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SELFMAG ;
 int elf_class ;
 int errno ;
 int fprintf (int ,char*,char*,char const*,...) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ memcmp (int*,int ,int ) ;
 void* mmap (int *,size_t,int,int ,int,int ) ;
 int need_swap ;
 int open (char const*,int ) ;
 char* program_name ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ swap_uint16 (int ) ;

__attribute__((used)) static void *map_vdso(const char *path, size_t *_size)
{
 int fd;
 struct stat stat;
 void *addr;
 const Elf32_Ehdr *ehdr;

 fd = open(path, O_RDWR);
 if (fd < 0) {
  fprintf(stderr, "%s: Failed to open '%s': %s\n", program_name,
   path, strerror(errno));
  return ((void*)0);
 }

 if (fstat(fd, &stat) != 0) {
  fprintf(stderr, "%s: Failed to stat '%s': %s\n", program_name,
   path, strerror(errno));
  return ((void*)0);
 }

 addr = mmap(((void*)0), stat.st_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd,
      0);
 if (addr == MAP_FAILED) {
  fprintf(stderr, "%s: Failed to map '%s': %s\n", program_name,
   path, strerror(errno));
  return ((void*)0);
 }


 ehdr = addr;

 if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG) != 0) {
  fprintf(stderr, "%s: '%s' is not an ELF file\n", program_name,
   path);
  return ((void*)0);
 }

 elf_class = ehdr->e_ident[EI_CLASS];
 switch (elf_class) {
 case 131:
 case 130:
  break;
 default:
  fprintf(stderr, "%s: '%s' has invalid ELF class\n",
   program_name, path);
  return ((void*)0);
 }

 switch (ehdr->e_ident[EI_DATA]) {
 case 129:
 case 128:
  need_swap = ehdr->e_ident[EI_DATA] != HOST_ORDER;
  break;
 default:
  fprintf(stderr, "%s: '%s' has invalid ELF data order\n",
   program_name, path);
  return ((void*)0);
 }

 if (swap_uint16(ehdr->e_machine) != EM_MIPS) {
  fprintf(stderr,
   "%s: '%s' has invalid ELF machine (expected EM_MIPS)\n",
   program_name, path);
  return ((void*)0);
 } else if (swap_uint16(ehdr->e_type) != ET_DYN) {
  fprintf(stderr,
   "%s: '%s' has invalid ELF type (expected ET_DYN)\n",
   program_name, path);
  return ((void*)0);
 }

 *_size = stat.st_size;
 return addr;
}
