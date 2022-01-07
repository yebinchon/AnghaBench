
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __wsum ;



__wsum
csum_partial_copy_nocheck(const void *src, void *dst, int len, __wsum sum)
{
 unsigned long tmp1, tmp2;
 __asm__("movel %2,%4\n\t"
  "btst #1,%4\n\t"
  "jeq 2f\n\t"
  "subql #2,%1\n\t"
  "jgt 1f\n\t"
  "addql #2,%1\n\t"
  "jra 4f\n"
      "1:\t"
  "movew %2@+,%4\n\t"
  "addw %4,%0\n\t"
  "movew %4,%3@+\n\t"
  "clrl %4\n\t"
  "addxl %4,%0\n"
      "2:\t"

  "movel %1,%4\n\t"
  "lsrl #5,%1\n\t"
  "jeq 2f\n\t"
  "subql #1,%1\n"
      "1:\t"
  "movel %2@+,%5\n\t"
  "addxl %5,%0\n\t"
  "movel %5,%3@+\n\t"
  "movel %2@+,%5\n\t"
  "addxl %5,%0\n\t"
  "movel %5,%3@+\n\t"
  "movel %2@+,%5\n\t"
  "addxl %5,%0\n\t"
  "movel %5,%3@+\n\t"
  "movel %2@+,%5\n\t"
  "addxl %5,%0\n\t"
  "movel %5,%3@+\n\t"
  "movel %2@+,%5\n\t"
  "addxl %5,%0\n\t"
  "movel %5,%3@+\n\t"
  "movel %2@+,%5\n\t"
  "addxl %5,%0\n\t"
  "movel %5,%3@+\n\t"
  "movel %2@+,%5\n\t"
  "addxl %5,%0\n\t"
  "movel %5,%3@+\n\t"
  "movel %2@+,%5\n\t"
  "addxl %5,%0\n\t"
  "movel %5,%3@+\n\t"
  "dbra %1,1b\n\t"
  "clrl %5\n\t"
  "addxl %5,%0\n\t"
  "clrw %1\n\t"
  "subql #1,%1\n\t"
  "jcc 1b\n"
      "2:\t"
  "movel %4,%1\n\t"
  "andw #0x1c,%4\n\t"
  "jeq 4f\n\t"
  "lsrw #2,%4\n\t"
  "subqw #1,%4\n"
      "3:\t"

  "movel %2@+,%5\n\t"
  "addxl %5,%0\n\t"
  "movel %5,%3@+\n\t"
  "dbra %4,3b\n\t"
  "clrl %5\n\t"
  "addxl %5,%0\n"
      "4:\t"

  "andw #3,%1\n\t"
  "jeq 7f\n\t"
  "clrl %5\n\t"
  "subqw #2,%1\n\t"
  "jlt 5f\n\t"
  "movew %2@+,%5\n\t"
  "movew %5,%3@+\n\t"
  "swap %5\n\t"
  "tstw %1\n\t"
  "jeq 6f\n"
      "5:\t"
  "moveb %2@,%5\n\t"
  "moveb %5,%3@+\n\t"
  "lslw #8,%5\n"
      "6:\t"
  "addl %5,%0\n\t"
  "clrl %5\n\t"
  "addxl %5,%0\n"
      "7:\t"
  : "=d" (sum), "=d" (len), "=a" (src), "=a" (dst),
    "=&d" (tmp1), "=&d" (tmp2)
  : "0" (sum), "1" (len), "2" (src), "3" (dst)
     );
    return(sum);
}
