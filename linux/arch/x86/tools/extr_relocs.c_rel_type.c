
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const* REL_TYPE (int ) ;
__attribute__((used)) static const char *rel_type(unsigned type)
{
 static const char *type_name[] = {
  [150] = "R_386_NONE",
  [158] = "R_386_32",
  [148] = "R_386_PC32",
  [154] = "R_386_GOT32",
  [146] = "R_386_PLT32",
  [156] = "R_386_COPY",
  [155] = "R_386_GLOB_DAT",
  [151] = "R_386_JMP_SLOT",
  [145] = "R_386_RELATIVE",
  [153] = "R_386_GOTOFF",
  [152] = "R_386_GOTPC",
  [157] = "R_386_8",
  [147] = "R_386_PC8",
  [159] = "R_386_16",
  [149] = "R_386_PC16",


 };
 const char *name = "unknown type rel type name";
 if (type < ARRAY_SIZE(type_name) && type_name[type]) {
  name = type_name[type];
 }
 return name;
}
