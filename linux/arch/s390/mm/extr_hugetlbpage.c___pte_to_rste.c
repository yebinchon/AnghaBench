
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned long PAGE_MASK ;
 int _PAGE_DIRTY ;
 int _PAGE_INVALID ;
 int _PAGE_NOEXEC ;
 int _PAGE_PROTECT ;
 int _PAGE_READ ;
 int _PAGE_SOFT_DIRTY ;
 int _PAGE_WRITE ;
 int _PAGE_YOUNG ;
 int _SEGMENT_ENTRY_DIRTY ;
 unsigned long _SEGMENT_ENTRY_EMPTY ;
 int _SEGMENT_ENTRY_INVALID ;
 int _SEGMENT_ENTRY_NOEXEC ;
 int _SEGMENT_ENTRY_PROTECT ;
 int _SEGMENT_ENTRY_READ ;
 int _SEGMENT_ENTRY_SOFT_DIRTY ;
 int _SEGMENT_ENTRY_WRITE ;
 int _SEGMENT_ENTRY_YOUNG ;
 unsigned long move_set_bit (unsigned long,int ,int ) ;
 scalar_t__ pte_present (int ) ;
 unsigned long pte_val (int ) ;

__attribute__((used)) static inline unsigned long __pte_to_rste(pte_t pte)
{
 unsigned long rste;
 if (pte_present(pte)) {
  rste = pte_val(pte) & PAGE_MASK;
  rste |= move_set_bit(pte_val(pte), _PAGE_READ,
         _SEGMENT_ENTRY_READ);
  rste |= move_set_bit(pte_val(pte), _PAGE_WRITE,
         _SEGMENT_ENTRY_WRITE);
  rste |= move_set_bit(pte_val(pte), _PAGE_INVALID,
         _SEGMENT_ENTRY_INVALID);
  rste |= move_set_bit(pte_val(pte), _PAGE_PROTECT,
         _SEGMENT_ENTRY_PROTECT);
  rste |= move_set_bit(pte_val(pte), _PAGE_DIRTY,
         _SEGMENT_ENTRY_DIRTY);
  rste |= move_set_bit(pte_val(pte), _PAGE_YOUNG,
         _SEGMENT_ENTRY_YOUNG);




  rste |= move_set_bit(pte_val(pte), _PAGE_NOEXEC,
         _SEGMENT_ENTRY_NOEXEC);
 } else
  rste = _SEGMENT_ENTRY_EMPTY;
 return rste;
}
