
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct x86_emulate_ctxt {int dummy; } ;


 int ctxt_virt_addr_bits (struct x86_emulate_ctxt*) ;
 scalar_t__ get_canonical (scalar_t__,int ) ;

__attribute__((used)) static inline bool emul_is_noncanonical_address(u64 la,
      struct x86_emulate_ctxt *ctxt)
{



 return 0;

}
