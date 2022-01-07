
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int d; } ;


 int PageTable ;

bool x86_page_table_writing_insn(struct x86_emulate_ctxt *ctxt)
{
 return ctxt->d & PageTable;
}
