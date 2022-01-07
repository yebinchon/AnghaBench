
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value_Type ;
typedef int JSON_Value ;
typedef int JSON_Status ;
typedef int JSON_Object ;
typedef int JSON_Array ;





 int JSONFailure ;





 int JSONSuccess ;
 size_t json_array_get_count (int *) ;
 int * json_array_get_value (int *,size_t) ;
 size_t json_object_get_count (int *) ;
 char* json_object_get_name (int *,size_t) ;
 int * json_object_get_value (int *,char const*) ;
 int * json_value_get_array (int const*) ;
 int * json_value_get_object (int const*) ;
 int json_value_get_type (int const*) ;

JSON_Status json_validate(const JSON_Value *schema, const JSON_Value *value) {
    JSON_Value *temp_schema_value = ((void*)0), *temp_value = ((void*)0);
    JSON_Array *schema_array = ((void*)0), *value_array = ((void*)0);
    JSON_Object *schema_object = ((void*)0), *value_object = ((void*)0);
    JSON_Value_Type schema_type = 133, value_type = 133;
    const char *key = ((void*)0);
    size_t i = 0, count = 0;
    if (schema == ((void*)0) || value == ((void*)0)) {
        return JSONFailure;
    }
    schema_type = json_value_get_type(schema);
    value_type = json_value_get_type(value);
    if (schema_type != value_type && schema_type != 131) {
        return JSONFailure;
    }
    switch (schema_type) {
        case 135:
            schema_array = json_value_get_array(schema);
            value_array = json_value_get_array(value);
            count = json_array_get_count(schema_array);
            if (count == 0) {
                return JSONSuccess;
            }

            temp_schema_value = json_array_get_value(schema_array, 0);
            for (i = 0; i < json_array_get_count(value_array); i++) {
                temp_value = json_array_get_value(value_array, i);
                if (json_validate(temp_schema_value, temp_value) == JSONFailure) {
                    return JSONFailure;
                }
            }
            return JSONSuccess;
        case 129:
            schema_object = json_value_get_object(schema);
            value_object = json_value_get_object(value);
            count = json_object_get_count(schema_object);
            if (count == 0) {
                return JSONSuccess;
            } else if (json_object_get_count(value_object) < count) {
                return JSONFailure;
            }
            for (i = 0; i < count; i++) {
                key = json_object_get_name(schema_object, i);
                temp_schema_value = json_object_get_value(schema_object, key);
                temp_value = json_object_get_value(value_object, key);
                if (temp_value == ((void*)0)) {
                    return JSONFailure;
                }
                if (json_validate(temp_schema_value, temp_value) == JSONFailure) {
                    return JSONFailure;
                }
            }
            return JSONSuccess;
        case 128: case 130: case 134: case 131:
            return JSONSuccess;




        case 133: default:
            return JSONFailure;
    }
}
