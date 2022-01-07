
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;


 int VPHN_ASSOC_BUFSIZE ;
 int VPHN_FIELD_MASK ;
 int VPHN_FIELD_MSB ;
 int VPHN_FIELD_UNUSED ;
 int VPHN_REGISTER_COUNT ;
 int be16_to_cpup (int ) ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (long const) ;

__attribute__((used)) static int vphn_unpack_associativity(const long *packed, __be32 *unpacked)
{
 __be64 be_packed[VPHN_REGISTER_COUNT];
 int i, nr_assoc_doms = 0;
 const __be16 *field = (const __be16 *) be_packed;
 u16 last = 0;
 bool is_32bit = 0;






 for (i = 0; i < VPHN_REGISTER_COUNT; i++)
  be_packed[i] = cpu_to_be64(packed[i]);

 for (i = 1; i < VPHN_ASSOC_BUFSIZE; i++) {
  u16 new = be16_to_cpup(field++);

  if (is_32bit) {




   unpacked[++nr_assoc_doms] =
    cpu_to_be32(last << 16 | new);
   is_32bit = 0;
  } else if (new == (0xffff))

   break;
  else if (new & (0x8000)) {

   unpacked[++nr_assoc_doms] =
    cpu_to_be32(new & (~(0x8000)));
  } else {




   last = new;
   is_32bit = 1;
  }
 }


 unpacked[0] = cpu_to_be32(nr_assoc_doms);

 return nr_assoc_doms;
}
