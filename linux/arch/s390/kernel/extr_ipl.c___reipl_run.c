
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG308_LOAD_CLEAR ;
 int DIAG308_SET ;





 int diag308 (int ,int *) ;
 int disabled_wait () ;
 int * reipl_block_ccw ;
 int * reipl_block_fcp ;
 int * reipl_block_nss ;
 int reipl_type ;

__attribute__((used)) static void __reipl_run(void *unused)
{
 switch (reipl_type) {
 case 132:
  diag308(DIAG308_SET, reipl_block_ccw);
  diag308(DIAG308_LOAD_CLEAR, ((void*)0));
  break;
 case 131:
  diag308(DIAG308_SET, reipl_block_fcp);
  diag308(DIAG308_LOAD_CLEAR, ((void*)0));
  break;
 case 129:
  diag308(DIAG308_SET, reipl_block_nss);
  diag308(DIAG308_LOAD_CLEAR, ((void*)0));
  break;
 case 128:
  diag308(DIAG308_LOAD_CLEAR, ((void*)0));
  break;
 case 130:
  break;
 }
 disabled_wait();
}
