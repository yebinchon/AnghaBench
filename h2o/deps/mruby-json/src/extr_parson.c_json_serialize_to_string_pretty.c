
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef scalar_t__ JSON_Status ;


 scalar_t__ JSONFailure ;
 int json_free_serialized_string (char*) ;
 size_t json_serialization_size_pretty (int const*) ;
 scalar_t__ json_serialize_to_buffer_pretty (int const*,char*,size_t) ;
 scalar_t__ parson_malloc (size_t) ;

char * json_serialize_to_string_pretty(const JSON_Value *value) {
    JSON_Status serialization_result = JSONFailure;
    size_t buf_size_bytes = json_serialization_size_pretty(value);
    char *buf = ((void*)0);
    if (buf_size_bytes == 0) {
        return ((void*)0);
    }
    buf = (char*)parson_malloc(buf_size_bytes);
    if (buf == ((void*)0)) {
        return ((void*)0);
    }
    serialization_result = json_serialize_to_buffer_pretty(value, buf, buf_size_bytes);
    if (serialization_result == JSONFailure) {
        json_free_serialized_string(buf);
        return ((void*)0);
    }
    return buf;
}
