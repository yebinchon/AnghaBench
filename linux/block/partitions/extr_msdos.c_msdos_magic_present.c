
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char MSDOS_LABEL_MAGIC1 ;
 unsigned char MSDOS_LABEL_MAGIC2 ;

__attribute__((used)) static inline int
msdos_magic_present(unsigned char *p)
{
 return (p[0] == MSDOS_LABEL_MAGIC1 && p[1] == MSDOS_LABEL_MAGIC2);
}
