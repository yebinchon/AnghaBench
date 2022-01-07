
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int reassemble_16a(int as16)
{
 int s, t;


 t = (as16 << 1) & 0xffff;
 s = (as16 & 0x8000);
 return (t ^ s ^ (s >> 1)) | (s >> 15);
}
