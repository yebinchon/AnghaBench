
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int op_t ;


 int MERGE (int ,int,int ,int) ;
 long OPSIZ ;

__attribute__((used)) static void _wordcopy_fwd_dest_aligned(long int dstp, long int srcp,
     size_t len)
{
 op_t ap;
 int sh_1, sh_2;




 sh_1 = 8 * (srcp % OPSIZ);
 sh_2 = 8 * OPSIZ - sh_1;



 srcp &= -OPSIZ;
 ap = ((op_t *) srcp)[0];
 srcp += OPSIZ;

 while (len > 3) {
  op_t a0, a1, a2, a3;

  a0 = ((op_t *) srcp)[0];
  a1 = ((op_t *) srcp)[1];
  a2 = ((op_t *) srcp)[2];
  a3 = ((op_t *) srcp)[3];
  ((op_t *) dstp)[0] = MERGE(ap, sh_1, a0, sh_2);
  ((op_t *) dstp)[1] = MERGE(a0, sh_1, a1, sh_2);
  ((op_t *) dstp)[2] = MERGE(a1, sh_1, a2, sh_2);
  ((op_t *) dstp)[3] = MERGE(a2, sh_1, a3, sh_2);

  ap = a3;
  srcp += 4 * OPSIZ;
  dstp += 4 * OPSIZ;
  len -= 4;
 }
 while (len > 0) {
  register op_t a0;

  a0 = ((op_t *) srcp)[0];
  ((op_t *) dstp)[0] = MERGE(ap, sh_1, a0, sh_2);

  ap = a0;
  srcp += OPSIZ;
  dstp += OPSIZ;
  len -= 1;
 }
}
