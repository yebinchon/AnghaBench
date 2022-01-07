
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* on_resolve_p ) () ;int * name_p; struct TYPE_3__* next_p; } ;
typedef TYPE_1__ jerryx_native_module_t ;
typedef int jerry_value_t ;
typedef scalar_t__ jerry_size_t ;


 int JERRY_ERROR_TYPE ;
 int JERRY_VLA (int ,scalar_t__,scalar_t__) ;
 TYPE_1__* first_module_p ;
 int jerry_char_t ;
 scalar_t__ jerry_get_utf8_string_size (int const) ;
 int jerry_string_to_utf8_char_buffer (int const,scalar_t__,scalar_t__) ;
 int jerryx_module_create_error (int ,int ,int const) ;
 scalar_t__ name_string ;
 int on_resolve_absent ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,scalar_t__) ;
 int stub1 () ;

__attribute__((used)) static bool
jerryx_resolve_native_module (const jerry_value_t canonical_name,
                              jerry_value_t *result)
{
  const jerryx_native_module_t *module_p = ((void*)0);

  jerry_size_t name_size = jerry_get_utf8_string_size (canonical_name);
  JERRY_VLA (jerry_char_t, name_string, name_size);
  jerry_string_to_utf8_char_buffer (canonical_name, name_string, name_size);


  for (module_p = first_module_p; module_p != ((void*)0); module_p = module_p->next_p)
  {
    if (module_p->name_p != ((void*)0)
        && strlen ((char *) module_p->name_p) == name_size
        && !strncmp ((char *) module_p->name_p, (char *) name_string, name_size))
    {

      (*result) = ((module_p->on_resolve_p) ? module_p->on_resolve_p ()
                                            : jerryx_module_create_error (JERRY_ERROR_TYPE,
                                                                          on_resolve_absent,
                                                                          canonical_name));
      return 1;
    }
  }

  return 0;
}
