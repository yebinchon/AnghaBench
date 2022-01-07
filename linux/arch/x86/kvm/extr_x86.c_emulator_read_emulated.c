
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_exception {int dummy; } ;
struct x86_emulate_ctxt {int dummy; } ;


 int emulator_read_write (struct x86_emulate_ctxt*,unsigned long,void*,unsigned int,struct x86_exception*,int *) ;
 int read_emultor ;

__attribute__((used)) static int emulator_read_emulated(struct x86_emulate_ctxt *ctxt,
      unsigned long addr,
      void *val,
      unsigned int bytes,
      struct x86_exception *exception)
{
 return emulator_read_write(ctxt, addr, val, bytes,
       exception, &read_emultor);
}
