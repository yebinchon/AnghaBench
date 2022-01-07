
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ end; } ;
struct TYPE_4__ {scalar_t__ end; scalar_t__ pos; } ;
struct x86_emulate_ctxt {TYPE_1__ mem_read; TYPE_2__ io_read; int rip_relative; int modrm; } ;


 int memset (int *,int ,int) ;

void init_decode_cache(struct x86_emulate_ctxt *ctxt)
{
 memset(&ctxt->rip_relative, 0,
        (void *)&ctxt->modrm - (void *)&ctxt->rip_relative);

 ctxt->io_read.pos = 0;
 ctxt->io_read.end = 0;
 ctxt->mem_read.end = 0;
}
