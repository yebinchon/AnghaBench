
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int jerry_run_simple (int const*,size_t,int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool
test_run_simple (const char *script_p)
{
  size_t script_size = strlen (script_p);

  return jerry_run_simple ((const jerry_char_t *) script_p, script_size, JERRY_INIT_EMPTY);
}
