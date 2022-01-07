
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value_Type ;
typedef int JSON_Value ;
typedef int JSON_Object ;
typedef int JSON_Array ;
 double fabs (scalar_t__) ;
 size_t json_array_get_count (int *) ;
 int * json_array_get_value (int *,size_t) ;
 size_t json_object_get_count (int *) ;
 char* json_object_get_name (int *,size_t) ;
 int * json_object_get_value (int *,char const*) ;
 int * json_value_get_array (int const*) ;
 int json_value_get_boolean (int const*) ;
 int json_value_get_fixed (int const*) ;
 scalar_t__ json_value_get_number (int const*) ;
 int * json_value_get_object (int const*) ;
 char* json_value_get_string (int const*) ;
 int json_value_get_type (int const*) ;
 int strcmp (char const*,char const*) ;

int json_value_equals(const JSON_Value *a, const JSON_Value *b) {
    JSON_Object *a_object = ((void*)0), *b_object = ((void*)0);
    JSON_Array *a_array = ((void*)0), *b_array = ((void*)0);
    const char *a_string = ((void*)0), *b_string = ((void*)0);
    const char *key = ((void*)0);
    size_t a_count = 0, b_count = 0, i = 0;
    JSON_Value_Type a_type, b_type;
    a_type = json_value_get_type(a);
    b_type = json_value_get_type(b);
    if (a_type != b_type) {
        return 0;
    }
    switch (a_type) {
        case 135:
            a_array = json_value_get_array(a);
            b_array = json_value_get_array(b);
            a_count = json_array_get_count(a_array);
            b_count = json_array_get_count(b_array);
            if (a_count != b_count) {
                return 0;
            }
            for (i = 0; i < a_count; i++) {
                if (!json_value_equals(json_array_get_value(a_array, i),
                                       json_array_get_value(b_array, i))) {
                    return 0;
                }
            }
            return 1;
        case 129:
            a_object = json_value_get_object(a);
            b_object = json_value_get_object(b);
            a_count = json_object_get_count(a_object);
            b_count = json_object_get_count(b_object);
            if (a_count != b_count) {
                return 0;
            }
            for (i = 0; i < a_count; i++) {
                key = json_object_get_name(a_object, i);
                if (!json_value_equals(json_object_get_value(a_object, key),
                                       json_object_get_value(b_object, key))) {
                    return 0;
                }
            }
            return 1;
        case 128:
            a_string = json_value_get_string(a);
            b_string = json_value_get_string(b);
            if (a_string == ((void*)0) || b_string == ((void*)0)) {
                return 0;
            }
            return strcmp(a_string, b_string) == 0;
        case 134:
            return json_value_get_boolean(a) == json_value_get_boolean(b);
        case 130:
            return fabs(json_value_get_number(a) - json_value_get_number(b)) < 0.000001;




        case 133:
            return 1;
        case 131:
            return 1;
        default:
            return 1;
    }
}
