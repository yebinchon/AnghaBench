
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_hi16 {struct mips_hi16* next; } ;


 int kfree (struct mips_hi16*) ;

__attribute__((used)) static void free_relocation_chain(struct mips_hi16 *l)
{
 struct mips_hi16 *next;

 while (l) {
  next = l->next;
  kfree(l);
  l = next;
 }
}
