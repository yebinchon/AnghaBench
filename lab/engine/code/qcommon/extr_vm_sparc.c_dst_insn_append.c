
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_info {int insn_index; int insn_buf; } ;
struct dst_insn {int * code; } ;


 int dst_insn_insert_tail (struct func_info* const,struct dst_insn*) ;
 struct dst_insn* dst_new (struct func_info* const,int,int *,int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void dst_insn_append(struct func_info * const fp)
{
 int insns_size = (sizeof(unsigned int) * fp->insn_index);
 struct dst_insn *dp;

 dp = dst_new(fp, fp->insn_index, ((void*)0), insns_size);
 if (insns_size)
  memcpy(&dp->code[0], fp->insn_buf, insns_size);
 dst_insn_insert_tail(fp, dp);

 fp->insn_index = 0;
}
