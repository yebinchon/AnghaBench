
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int kzfree (int *) ;

__attribute__((used)) static void ecc_free_digits_space(u64 *space)
{
 kzfree(space);
}
