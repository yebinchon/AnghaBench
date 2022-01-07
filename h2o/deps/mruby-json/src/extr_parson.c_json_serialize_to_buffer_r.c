
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double intmax_t ;
typedef int JSON_Value ;
typedef int JSON_Object ;
typedef int JSON_Array ;


 int APPEND_INDENT (int) ;
 int APPEND_STRING (char*) ;
 char* FIXED_FORMAT ;
 char* FLOAT_FORMAT ;
 size_t json_array_get_count (int *) ;
 int * json_array_get_value (int *,size_t) ;
 size_t json_object_get_count (int *) ;
 char* json_object_get_name (int *,size_t) ;
 int * json_object_get_value (int *,char const*) ;
 int json_serialize_string (char const*,char*) ;
 int * json_value_get_array (int const*) ;
 int json_value_get_boolean (int const*) ;
 double json_value_get_fixed (int const*) ;
 double json_value_get_number (int const*) ;
 int * json_value_get_object (int const*) ;
 char* json_value_get_string (int const*) ;
 int json_value_get_type (int const*) ;
 int sprintf (char*,char*,double) ;

__attribute__((used)) static int json_serialize_to_buffer_r(const JSON_Value *value, char *buf, int level, int is_pretty, char *num_buf)
{
    const char *key = ((void*)0), *string = ((void*)0);
    JSON_Value *temp_value = ((void*)0);
    JSON_Array *array = ((void*)0);
    JSON_Object *object = ((void*)0);
    size_t i = 0, count = 0;
    double num = 0.0;



    int written = -1, written_total = 0;

    switch (json_value_get_type(value)) {
        case 135:
            array = json_value_get_array(value);
            count = json_array_get_count(array);
            APPEND_STRING("[");
            if (count > 0 && is_pretty) {
                APPEND_STRING("\n");
            }
            for (i = 0; i < count; i++) {
                if (is_pretty) {
                    APPEND_INDENT(level+1);
                }
                temp_value = json_array_get_value(array, i);
                written = json_serialize_to_buffer_r(temp_value, buf, level+1, is_pretty, num_buf);
                if (written < 0) {
                    return -1;
                }
                if (buf != ((void*)0)) {
                    buf += written;
                }
                written_total += written;
                if (i < (count - 1)) {
                    APPEND_STRING(",");
                }
                if (is_pretty) {
                    APPEND_STRING("\n");
                }
            }
            if (count > 0 && is_pretty) {
                APPEND_INDENT(level);
            }
            APPEND_STRING("]");
            return written_total;
        case 129:
            object = json_value_get_object(value);
            count = json_object_get_count(object);
            APPEND_STRING("{");
            if (count > 0 && is_pretty) {
                APPEND_STRING("\n");
            }
            for (i = 0; i < count; i++) {
                key = json_object_get_name(object, i);
                if (key == ((void*)0)) {
                    return -1;
                }
                if (is_pretty) {
                    APPEND_INDENT(level+1);
                }
                written = json_serialize_string(key, buf);
                if (written < 0) {
                    return -1;
                }
                if (buf != ((void*)0)) {
                    buf += written;
                }
                written_total += written;
                APPEND_STRING(":");
                if (is_pretty) {
                    APPEND_STRING(" ");
                }
                temp_value = json_object_get_value(object, key);
                written = json_serialize_to_buffer_r(temp_value, buf, level+1, is_pretty, num_buf);
                if (written < 0) {
                    return -1;
                }
                if (buf != ((void*)0)) {
                    buf += written;
                }
                written_total += written;
                if (i < (count - 1)) {
                    APPEND_STRING(",");
                }
                if (is_pretty) {
                    APPEND_STRING("\n");
                }
            }
            if (count > 0 && is_pretty) {
                APPEND_INDENT(level);
            }
            APPEND_STRING("}");
            return written_total;
        case 128:
            string = json_value_get_string(value);
            if (string == ((void*)0)) {
                return -1;
            }
            written = json_serialize_string(string, buf);
            if (written < 0) {
                return -1;
            }
            if (buf != ((void*)0)) {
                buf += written;
            }
            written_total += written;
            return written_total;
        case 134:
            if (json_value_get_boolean(value)) {
                APPEND_STRING("true");
            } else {
                APPEND_STRING("false");
            }
            return written_total;
        case 130:
            num = json_value_get_number(value);
            if (buf != ((void*)0)) {
                num_buf = buf;
            }
            written = sprintf(num_buf, FLOAT_FORMAT, num);
            if (written < 0) {
                return -1;
            }
            if (buf != ((void*)0)) {
                buf += written;
            }
            written_total += written;
            return written_total;
        case 131:
            APPEND_STRING("null");
            return written_total;
        case 133:
            return -1;
        default:
            return -1;
    }
}
