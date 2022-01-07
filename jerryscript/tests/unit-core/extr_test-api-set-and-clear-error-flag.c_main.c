
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pterodactylus ;
typedef scalar_t__ jerry_value_t ;
typedef char jerry_char_t ;


 int JERRY_INIT_EMPTY ;
 int TEST_ASSERT (int) ;
 int TEST_INIT () ;
 int compare_str (scalar_t__,char const*,size_t const) ;
 scalar_t__ jerry_acquire_value (scalar_t__) ;
 int jerry_cleanup () ;
 scalar_t__ jerry_create_abort_from_value (scalar_t__,int) ;
 scalar_t__ jerry_create_error_from_value (scalar_t__,int) ;
 scalar_t__ jerry_create_number (int) ;
 scalar_t__ jerry_create_object () ;
 scalar_t__ jerry_create_string (char const*) ;
 double jerry_get_number_value (scalar_t__) ;
 scalar_t__ jerry_get_value_from_error (scalar_t__,int) ;
 int jerry_init (int ) ;
 int jerry_release_value (scalar_t__) ;
 int jerry_value_is_abort (scalar_t__) ;
 int jerry_value_is_error (scalar_t__) ;

int
main (void)
{
  TEST_INIT ();

  jerry_init (JERRY_INIT_EMPTY);

  jerry_value_t obj_val = jerry_create_object ();
  obj_val = jerry_create_error_from_value (obj_val, 1);
  jerry_value_t err_val = jerry_acquire_value (obj_val);

  obj_val = jerry_get_value_from_error (err_val, 1);

  TEST_ASSERT (obj_val != err_val);
  jerry_release_value (err_val);
  jerry_release_value (obj_val);

  const jerry_char_t pterodactylus[] = "Pterodactylus";
  const size_t pterodactylus_size = sizeof (pterodactylus) - 1;

  jerry_value_t str = jerry_create_string (pterodactylus);
  jerry_value_t error = jerry_create_error_from_value (str, 1);
  str = jerry_get_value_from_error (error, 1);

  compare_str (str, pterodactylus, pterodactylus_size);
  jerry_release_value (str);

  str = jerry_create_string (pterodactylus);
  error = jerry_create_error_from_value (str, 0);
  jerry_release_value (str);
  str = jerry_get_value_from_error (error, 1);

  compare_str (str, pterodactylus, pterodactylus_size);
  jerry_release_value (str);

  str = jerry_create_string (pterodactylus);
  error = jerry_create_abort_from_value (str, 1);
  str = jerry_get_value_from_error (error, 1);

  compare_str (str, pterodactylus, pterodactylus_size);
  jerry_release_value (str);

  str = jerry_create_string (pterodactylus);
  error = jerry_create_abort_from_value (str, 0);
  jerry_release_value (str);
  str = jerry_get_value_from_error (error, 1);

  compare_str (str, pterodactylus, pterodactylus_size);
  jerry_release_value (str);

  str = jerry_create_string (pterodactylus);
  error = jerry_create_error_from_value (str, 1);
  error = jerry_create_abort_from_value (error, 1);
  TEST_ASSERT (jerry_value_is_abort (error));
  str = jerry_get_value_from_error (error, 1);

  compare_str (str, pterodactylus, pterodactylus_size);
  jerry_release_value (str);

  str = jerry_create_string (pterodactylus);
  error = jerry_create_error_from_value (str, 1);
  jerry_value_t error2 = jerry_create_abort_from_value (error, 0);
  TEST_ASSERT (jerry_value_is_abort (error2));
  jerry_release_value (error);
  str = jerry_get_value_from_error (error2, 1);

  compare_str (str, pterodactylus, pterodactylus_size);
  jerry_release_value (str);

  double test_num = 3.1415926;
  jerry_value_t num = jerry_create_number (test_num);
  jerry_value_t num2 = jerry_create_error_from_value (num, 0);
  TEST_ASSERT (jerry_value_is_error (num2));
  jerry_release_value (num);
  num2 = jerry_get_value_from_error (num2, 1);
  TEST_ASSERT (jerry_get_number_value (num2) == test_num);
  jerry_release_value (num2);

  num = jerry_create_number (test_num);
  num2 = jerry_create_error_from_value (num, 1);
  TEST_ASSERT (jerry_value_is_error (num2));
  num2 = jerry_get_value_from_error (num2, 1);
  TEST_ASSERT (jerry_get_number_value (num2) == test_num);
  jerry_release_value (num2);

  num = jerry_create_number (test_num);
  num2 = jerry_create_error_from_value (num, 0);
  TEST_ASSERT (jerry_value_is_error (num2));
  jerry_release_value (num);
  jerry_value_t num3 = jerry_create_error_from_value (num2, 0);
  TEST_ASSERT (jerry_value_is_error (num3));
  jerry_release_value (num2);
  num2 = jerry_get_value_from_error (num3, 1);
  TEST_ASSERT (jerry_get_number_value (num2) == test_num);
  jerry_release_value (num2);

  num = jerry_create_number (test_num);
  num2 = jerry_create_error_from_value (num, 1);
  TEST_ASSERT (jerry_value_is_error (num2));
  num3 = jerry_create_error_from_value (num2, 1);
  TEST_ASSERT (jerry_value_is_error (num3));
  num2 = jerry_get_value_from_error (num3, 1);
  TEST_ASSERT (jerry_get_number_value (num2) == test_num);
  jerry_release_value (num2);

  num = jerry_create_number (test_num);
  error = jerry_create_abort_from_value (num, 1);
  TEST_ASSERT (jerry_value_is_abort (error));
  num2 = jerry_create_error_from_value (error, 1);
  TEST_ASSERT (jerry_value_is_error (num2));
  num = jerry_get_value_from_error (num2, 1);
  TEST_ASSERT (jerry_get_number_value (num) == test_num);
  jerry_release_value (num);

  num = jerry_create_number (test_num);
  error = jerry_create_abort_from_value (num, 0);
  jerry_release_value (num);
  TEST_ASSERT (jerry_value_is_abort (error));
  num2 = jerry_create_error_from_value (error, 1);
  TEST_ASSERT (jerry_value_is_error (num2));
  num = jerry_get_value_from_error (num2, 1);
  TEST_ASSERT (jerry_get_number_value (num) == test_num);
  jerry_release_value (num);

  num = jerry_create_number (test_num);
  error = jerry_create_abort_from_value (num, 1);
  TEST_ASSERT (jerry_value_is_abort (error));
  num2 = jerry_create_error_from_value (error, 0);
  jerry_release_value (error);
  TEST_ASSERT (jerry_value_is_error (num2));
  num = jerry_get_value_from_error (num2, 1);
  TEST_ASSERT (jerry_get_number_value (num) == test_num);
  jerry_release_value (num);

  num = jerry_create_number (test_num);
  error = jerry_create_abort_from_value (num, 0);
  jerry_release_value (num);
  TEST_ASSERT (jerry_value_is_abort (error));
  num2 = jerry_create_error_from_value (error, 0);
  jerry_release_value (error);
  TEST_ASSERT (jerry_value_is_error (num2));
  num = jerry_get_value_from_error (num2, 1);
  TEST_ASSERT (jerry_get_number_value (num) == test_num);
  jerry_release_value (num);

  jerry_value_t value = jerry_create_number (42);
  value = jerry_get_value_from_error (value, 1);
  jerry_release_value (value);

  value = jerry_create_number (42);
  jerry_value_t value2 = jerry_get_value_from_error (value, 0);
  jerry_release_value (value);
  jerry_release_value (value2);

  value = jerry_create_number (42);
  error = jerry_create_error_from_value (value, 1);
  error = jerry_create_error_from_value (error, 1);
  jerry_release_value (error);

  value = jerry_create_number (42);
  error = jerry_create_abort_from_value (value, 1);
  error = jerry_create_abort_from_value (error, 1);
  jerry_release_value (error);

  value = jerry_create_number (42);
  error = jerry_create_error_from_value (value, 1);
  error2 = jerry_create_error_from_value (error, 0);
  jerry_release_value (error);
  jerry_release_value (error2);

  value = jerry_create_number (42);
  error = jerry_create_abort_from_value (value, 1);
  error2 = jerry_create_abort_from_value (error, 0);
  jerry_release_value (error);
  jerry_release_value (error2);

  jerry_cleanup ();
}
