
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sh_name; } ;
struct TYPE_4__ {char* strtab; TYPE_1__ shdr; } ;


 unsigned int SHN_ABS ;
 unsigned int SHN_COMMON ;
 TYPE_2__* secs ;
 unsigned int shnum ;
 size_t shstrndx ;

__attribute__((used)) static const char *sec_name(unsigned shndx)
{
 const char *sec_strtab;
 const char *name;
 sec_strtab = secs[shstrndx].strtab;
 name = "<noname>";
 if (shndx < shnum) {
  name = sec_strtab + secs[shndx].shdr.sh_name;
 }
 else if (shndx == SHN_ABS) {
  name = "ABSOLUTE";
 }
 else if (shndx == SHN_COMMON) {
  name = "COMMON";
 }
 return name;
}
