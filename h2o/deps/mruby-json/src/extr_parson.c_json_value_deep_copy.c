
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const JSON_Value ;
typedef int JSON_Object ;
typedef int JSON_Array ;





 int JSONFailure ;





 int json_array_add (int *,int const*) ;
 size_t json_array_get_count (int *) ;
 int const* json_array_get_value (int *,size_t) ;
 int json_object_add (int *,char const*,int const*) ;
 size_t json_object_get_count (int *) ;
 char* json_object_get_name (int *,size_t) ;
 int const* json_object_get_value (int *,char const*) ;
 int json_value_free (int const*) ;
 int * json_value_get_array (int const*) ;
 int json_value_get_boolean (int const*) ;
 int json_value_get_fixed (int const*) ;
 int json_value_get_number (int const*) ;
 int * json_value_get_object (int const*) ;
 char* json_value_get_string (int const*) ;
 int json_value_get_type (int const*) ;
 int const* json_value_init_array () ;
 int const* json_value_init_boolean (int ) ;
 int const* json_value_init_fixed (int ) ;
 int const* json_value_init_null () ;
 int const* json_value_init_number (int ) ;
 int const* json_value_init_object () ;
 int const* json_value_init_string_no_copy (char*) ;
 int parson_free (char*) ;
 char* parson_strdup (char const*) ;

JSON_Value * json_value_deep_copy(const JSON_Value *value) {
    size_t i = 0;
    JSON_Value *return_value = ((void*)0), *temp_value_copy = ((void*)0), *temp_value = ((void*)0);
    const char *temp_string = ((void*)0), *temp_key = ((void*)0);
    char *temp_string_copy = ((void*)0);
    JSON_Array *temp_array = ((void*)0), *temp_array_copy = ((void*)0);
    JSON_Object *temp_object = ((void*)0), *temp_object_copy = ((void*)0);

    switch (json_value_get_type(value)) {
        case 135:
            temp_array = json_value_get_array(value);
            return_value = json_value_init_array();
            if (return_value == ((void*)0)) {
                return ((void*)0);
            }
            temp_array_copy = json_value_get_array(return_value);
            for (i = 0; i < json_array_get_count(temp_array); i++) {
                temp_value = json_array_get_value(temp_array, i);
                temp_value_copy = json_value_deep_copy(temp_value);
                if (temp_value_copy == ((void*)0)) {
                    json_value_free(return_value);
                    return ((void*)0);
                }
                if (json_array_add(temp_array_copy, temp_value_copy) == JSONFailure) {
                    json_value_free(return_value);
                    json_value_free(temp_value_copy);
                    return ((void*)0);
                }
            }
            return return_value;
        case 129:
            temp_object = json_value_get_object(value);
            return_value = json_value_init_object();
            if (return_value == ((void*)0)) {
                return ((void*)0);
            }
            temp_object_copy = json_value_get_object(return_value);
            for (i = 0; i < json_object_get_count(temp_object); i++) {
                temp_key = json_object_get_name(temp_object, i);
                temp_value = json_object_get_value(temp_object, temp_key);
                temp_value_copy = json_value_deep_copy(temp_value);
                if (temp_value_copy == ((void*)0)) {
                    json_value_free(return_value);
                    return ((void*)0);
                }
                if (json_object_add(temp_object_copy, temp_key, temp_value_copy) == JSONFailure) {
                    json_value_free(return_value);
                    json_value_free(temp_value_copy);
                    return ((void*)0);
                }
            }
            return return_value;
        case 134:
            return json_value_init_boolean(json_value_get_boolean(value));
        case 130:
            return json_value_init_number(json_value_get_number(value));




        case 128:
            temp_string = json_value_get_string(value);
            if (temp_string == ((void*)0)) {
                return ((void*)0);
            }
            temp_string_copy = parson_strdup(temp_string);
            if (temp_string_copy == ((void*)0)) {
                return ((void*)0);
            }
            return_value = json_value_init_string_no_copy(temp_string_copy);
            if (return_value == ((void*)0)) {
                parson_free(temp_string_copy);
            }
            return return_value;
        case 131:
            return json_value_init_null();
        case 133:
            return ((void*)0);
        default:
            return ((void*)0);
    }
}
