
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int APIC_EILVT_MASKED ;
 int APIC_EILVT_NR_MAX ;
 unsigned int atomic_cmpxchg (int *,unsigned int,unsigned int) ;
 unsigned int atomic_read (int *) ;
 int eilvt_entry_is_changeable (unsigned int,unsigned int) ;
 int * eilvt_offsets ;
 int pr_info (char*,int,unsigned int) ;

__attribute__((used)) static unsigned int reserve_eilvt_offset(int offset, unsigned int new)
{
 unsigned int rsvd, vector;

 if (offset >= APIC_EILVT_NR_MAX)
  return ~0;

 rsvd = atomic_read(&eilvt_offsets[offset]);
 do {
  vector = rsvd & ~APIC_EILVT_MASKED;
  if (vector && !eilvt_entry_is_changeable(vector, new))

   return rsvd;
  rsvd = atomic_cmpxchg(&eilvt_offsets[offset], rsvd, new);
 } while (rsvd != new);

 rsvd &= ~APIC_EILVT_MASKED;
 if (rsvd && rsvd != vector)
  pr_info("LVT offset %d assigned for vector 0x%02x\n",
   offset, rsvd);

 return new;
}
