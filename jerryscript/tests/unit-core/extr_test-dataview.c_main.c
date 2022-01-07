
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set_src ;
typedef int jerry_value_t ;
typedef int jerry_length_t ;
typedef char jerry_char_t ;
typedef int get_src_little_endian ;
typedef int get_src ;


 int JERRY_BIN_OP_STRICT_EQUAL ;
 scalar_t__ JERRY_ERROR_RANGE ;
 scalar_t__ JERRY_ERROR_TYPE ;
 int JERRY_FEATURE_DATAVIEW ;
 int JERRY_FEATURE_TYPEDARRAY ;
 int JERRY_INIT_EMPTY ;
 int JERRY_LOG_LEVEL_ERROR ;
 int JERRY_PARSE_NO_OPTS ;
 int TEST_ASSERT (int) ;
 int jerry_binary_operation (int ,int ,int ) ;
 int jerry_cleanup () ;
 int jerry_create_arraybuffer (int) ;
 int jerry_create_dataview (int ,int,int) ;
 int jerry_create_object () ;
 int jerry_create_string (char const*) ;
 int jerry_eval (char const*,int,int ) ;
 int jerry_get_dataview_buffer (int ,int*,int*) ;
 scalar_t__ jerry_get_error_type (int ) ;
 int jerry_get_global_object () ;
 int jerry_get_number_value (int ) ;
 int jerry_get_value_from_error (int ,int) ;
 int jerry_init (int ) ;
 int jerry_is_feature_enabled (int ) ;
 int jerry_port_log (int ,char*) ;
 int jerry_release_value (int ) ;
 int jerry_set_property (int ,int ,int ) ;
 int jerry_value_is_dataview (int ) ;
 int jerry_value_is_error (int ) ;
 int jerry_value_is_undefined (int ) ;

int
main (void)
{
  if (!jerry_is_feature_enabled (JERRY_FEATURE_DATAVIEW))
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "DataView support is disabled!\n");
    return 0;
  }


  TEST_ASSERT (jerry_is_feature_enabled (JERRY_FEATURE_TYPEDARRAY));

  jerry_init (JERRY_INIT_EMPTY);


  jerry_value_t arraybuffer = jerry_create_arraybuffer (16);
  jerry_value_t view1 = jerry_create_dataview (arraybuffer, 0, 16);
  TEST_ASSERT (!jerry_value_is_error (view1));
  TEST_ASSERT (jerry_value_is_dataview (view1));

  jerry_length_t byteOffset = 0;
  jerry_length_t byteLength = 0;;
  jerry_value_t internal_buffer = jerry_get_dataview_buffer (view1, &byteOffset, &byteLength);
  TEST_ASSERT (jerry_binary_operation (JERRY_BIN_OP_STRICT_EQUAL, internal_buffer, arraybuffer));
  TEST_ASSERT (byteOffset == 0);
  TEST_ASSERT (byteLength == 16);
  jerry_release_value (internal_buffer);

  jerry_value_t view2 = jerry_create_dataview (arraybuffer, 12, 4);
  TEST_ASSERT (!jerry_value_is_error (view1));
  TEST_ASSERT (jerry_value_is_dataview (view2));
  internal_buffer = jerry_get_dataview_buffer (view2, &byteOffset, &byteLength);
  TEST_ASSERT (jerry_binary_operation (JERRY_BIN_OP_STRICT_EQUAL, internal_buffer, arraybuffer));
  TEST_ASSERT (byteOffset == 12);
  TEST_ASSERT (byteLength == 4);
  jerry_release_value (internal_buffer);


  jerry_value_t empty_object = jerry_create_object ();
  jerry_value_t view3 = jerry_create_dataview (empty_object, 20, 10);
  TEST_ASSERT (jerry_value_is_error (view3));
  jerry_value_t error_obj = jerry_get_value_from_error (view3, 1);
  TEST_ASSERT (jerry_get_error_type (error_obj) == JERRY_ERROR_TYPE);
  jerry_release_value (error_obj);
  jerry_release_value (empty_object);

  jerry_value_t view4 = jerry_create_dataview (arraybuffer, 20, 10);
  TEST_ASSERT (jerry_value_is_error (view3));
  error_obj = jerry_get_value_from_error (view4, 1);
  TEST_ASSERT (jerry_get_error_type (error_obj) == JERRY_ERROR_RANGE);
  jerry_release_value (error_obj);


  jerry_value_t global_obj = jerry_get_global_object ();
  jerry_value_t view1_str = jerry_create_string ((const jerry_char_t *) "view1");
  jerry_value_t view2_str = jerry_create_string ((const jerry_char_t *) "view2");
  TEST_ASSERT (jerry_set_property (global_obj, view1_str, view1));
  TEST_ASSERT (jerry_set_property (global_obj, view2_str, view2));

  jerry_release_value (view1_str);
  jerry_release_value (view2_str);
  jerry_release_value (global_obj);

  const jerry_char_t set_src[] = "view1.setInt16 (12, 255)";
  TEST_ASSERT (jerry_value_is_undefined (jerry_eval (set_src, sizeof (set_src) - 1, JERRY_PARSE_NO_OPTS)));

  const jerry_char_t get_src[] = "view2.getInt16 (0)";
  TEST_ASSERT (jerry_get_number_value (jerry_eval (get_src, sizeof (get_src) - 1, JERRY_PARSE_NO_OPTS)) == 255);

  const jerry_char_t get_src_little_endian[] = "view2.getInt16 (0, true)";
  TEST_ASSERT (jerry_get_number_value (jerry_eval (get_src_little_endian,
                                                   sizeof (get_src_little_endian) - 1,
                                                   JERRY_PARSE_NO_OPTS)) == -256);


  jerry_release_value (view2);
  jerry_release_value (view1);
  jerry_release_value (arraybuffer);

  jerry_cleanup ();

  return 0;
}
