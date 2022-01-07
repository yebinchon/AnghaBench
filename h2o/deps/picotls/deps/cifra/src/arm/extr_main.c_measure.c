
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int (* measure_fn ) () ;


 int clear_stack () ;
 int emit (char*) ;
 int emit_uint32 (int) ;
 int get_cycles () ;
 int measure_stack () ;
 int reset_cycles () ;

__attribute__((used)) static void measure(measure_fn fn)
{
  clear_stack();
  uint32_t start_cycles = reset_cycles();
  fn();
  uint32_t end_cycles = get_cycles();
  uint32_t stack_words = measure_stack();

  emit("cycles = ");
  emit_uint32(end_cycles - start_cycles);
  emit("\n");
  emit("stack = ");
  emit_uint32(stack_words << 2);
  emit("\n");
}
