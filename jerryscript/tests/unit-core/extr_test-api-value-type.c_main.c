
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int test_eval_function ;
struct TYPE_3__ {scalar_t__ type_info; int value; } ;
typedef TYPE_1__ test_entry_t ;
typedef int jerry_value_t ;
typedef scalar_t__ jerry_type_t ;
typedef char const jerry_char_t ;
typedef int entries ;


 TYPE_1__ ENTRY (int ,int ) ;
 int JERRY_ERROR_TYPE ;
 int JERRY_FEATURE_SYMBOL ;
 int JERRY_INIT_EMPTY ;
 int JERRY_PARSE_NO_OPTS ;
 int JERRY_TYPE_BOOLEAN ;
 int JERRY_TYPE_ERROR ;
 int JERRY_TYPE_FUNCTION ;
 scalar_t__ JERRY_TYPE_NONE ;
 int JERRY_TYPE_NULL ;
 int JERRY_TYPE_NUMBER ;
 int JERRY_TYPE_OBJECT ;
 int JERRY_TYPE_STRING ;
 scalar_t__ JERRY_TYPE_SYMBOL ;
 int JERRY_TYPE_UNDEFINED ;
 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int jerry_cleanup () ;
 int jerry_create_array (int) ;
 int jerry_create_boolean (int) ;
 int jerry_create_error (int ,char const*) ;
 int jerry_create_external_function (int ) ;
 int jerry_create_null () ;
 int jerry_create_number (int) ;
 int jerry_create_number_infinity (int) ;
 int jerry_create_number_nan () ;
 int jerry_create_object () ;
 int jerry_create_string (char const*) ;
 int jerry_create_symbol (int ) ;
 int jerry_create_undefined () ;
 int jerry_eval (char const*,int,int ) ;
 int jerry_init (int ) ;
 scalar_t__ jerry_is_feature_enabled (int ) ;
 int jerry_release_value (int ) ;
 scalar_t__ jerry_value_get_type (int ) ;
 int test_ext_function ;

int
main (void)
{
  TEST_INIT ();

  jerry_init (JERRY_INIT_EMPTY);

  const jerry_char_t test_eval_function[] = "function demo(a) { return a + 1; }; demo";

  test_entry_t entries[] =
  {
    ENTRY (JERRY_TYPE_NUMBER, jerry_create_number (-33.0)),
    ENTRY (JERRY_TYPE_NUMBER, jerry_create_number (3)),
    ENTRY (JERRY_TYPE_NUMBER, jerry_create_number_nan ()),
    ENTRY (JERRY_TYPE_NUMBER, jerry_create_number_infinity (0)),
    ENTRY (JERRY_TYPE_NUMBER, jerry_create_number_infinity (1)),

    ENTRY (JERRY_TYPE_BOOLEAN, jerry_create_boolean (1)),
    ENTRY (JERRY_TYPE_BOOLEAN, jerry_create_boolean (0)),

    ENTRY (JERRY_TYPE_UNDEFINED, jerry_create_undefined ()),

    ENTRY (JERRY_TYPE_OBJECT, jerry_create_object ()),
    ENTRY (JERRY_TYPE_OBJECT, jerry_create_array (10)),
    ENTRY (JERRY_TYPE_ERROR, jerry_create_error (JERRY_ERROR_TYPE, (const jerry_char_t *) "error")),

    ENTRY (JERRY_TYPE_NULL, jerry_create_null ()),

    ENTRY (JERRY_TYPE_FUNCTION, jerry_eval (test_eval_function,
                                            sizeof (test_eval_function) - 1,
                                            JERRY_PARSE_NO_OPTS)),
    ENTRY (JERRY_TYPE_FUNCTION, jerry_create_external_function (test_ext_function)),

    ENTRY (JERRY_TYPE_STRING, jerry_create_string (test_eval_function)),
    ENTRY (JERRY_TYPE_STRING, jerry_create_string ((jerry_char_t *) "")),
  };

  for (size_t idx = 0; idx < sizeof (entries) / sizeof (entries[0]); idx++)
  {
    jerry_type_t type_info = jerry_value_get_type (entries[idx].value);

    TEST_ASSERT (type_info != JERRY_TYPE_NONE);
    TEST_ASSERT (type_info == entries[idx].type_info);

    jerry_release_value (entries[idx].value);
  }

  if (jerry_is_feature_enabled (JERRY_FEATURE_SYMBOL))
  {
    jerry_value_t symbol_desc_value = jerry_create_string ((jerry_char_t *) "foo");
    jerry_value_t symbol_value = jerry_create_symbol (symbol_desc_value);
    jerry_type_t type_info = jerry_value_get_type (symbol_value);

    TEST_ASSERT (type_info != JERRY_TYPE_NONE);
    TEST_ASSERT (type_info == JERRY_TYPE_SYMBOL);

    jerry_release_value (symbol_value);
    jerry_release_value (symbol_desc_value);
  }

  jerry_cleanup ();

  return 0;
}
