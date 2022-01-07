
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int diag308_dump (int ) ;
 int dump_block_ccw ;
 int dump_block_fcp ;
 int dump_type ;

__attribute__((used)) static void __dump_run(void *unused)
{
 switch (dump_type) {
 case 129:
  diag308_dump(dump_block_ccw);
  break;
 case 128:
  diag308_dump(dump_block_fcp);
  break;
 default:
  break;
 }
}
