
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_frame {int dummy; } ;


 int dwarf_frame_free_regs (struct dwarf_frame*) ;
 int dwarf_frame_pool ;
 int mempool_free (struct dwarf_frame*,int ) ;

void dwarf_free_frame(struct dwarf_frame *frame)
{
 dwarf_frame_free_regs(frame);
 mempool_free(frame, dwarf_frame_pool);
}
