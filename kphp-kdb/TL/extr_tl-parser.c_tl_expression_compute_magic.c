
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {scalar_t__ type; unsigned int magic; int text; } ;
struct tl_compiler {int dummy; } ;


 unsigned int compute_crc32 (int ,int ) ;
 int strlen (int ) ;
 int tl_failf (struct tl_compiler*,char*,unsigned int,unsigned int,int ) ;
 scalar_t__ tlet_simple ;

int tl_expression_compute_magic (struct tl_compiler *C, struct tl_expression *E) {
  if (E->type != tlet_simple) {
    return 0;
  }
  unsigned m = compute_crc32 (E->text, strlen (E->text));
  if (E->magic && E->magic != m) {
     return tl_failf (C, "tl_expression_compute_magic: magic in schema (0x%x) isn't equal to computed magic (0x%x), expr: %s", E->magic, m, E->text);
  }
  E->magic = m;
  return 0;
}
