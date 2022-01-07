
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG308_LOAD_NORMAL_DUMP ;
 int DIAG308_SET ;
 int USEC_PER_SEC ;
 int diag308 (int ,void*) ;
 int udelay_simple (int ) ;

__attribute__((used)) static void diag308_dump(void *dump_block)
{
 diag308(DIAG308_SET, dump_block);
 while (1) {
  if (diag308(DIAG308_LOAD_NORMAL_DUMP, ((void*)0)) != 0x302)
   break;
  udelay_simple(USEC_PER_SEC);
 }
}
