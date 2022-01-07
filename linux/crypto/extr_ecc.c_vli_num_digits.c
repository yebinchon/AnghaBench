
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static unsigned int vli_num_digits(const u64 *vli, unsigned int ndigits)
{
 int i;





 for (i = ndigits - 1; i >= 0 && vli[i] == 0; i--);

 return (i + 1);
}
