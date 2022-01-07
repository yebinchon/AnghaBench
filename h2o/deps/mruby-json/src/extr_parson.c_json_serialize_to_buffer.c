
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;
typedef int JSON_Status ;


 int JSONFailure ;
 int JSONSuccess ;
 size_t json_serialization_size (int const*) ;
 int json_serialize_to_buffer_r (int const*,char*,int ,int ,int *) ;

JSON_Status json_serialize_to_buffer(const JSON_Value *value, char *buf, size_t buf_size_in_bytes) {
    int written = -1;
    size_t needed_size_in_bytes = json_serialization_size(value);
    if (needed_size_in_bytes == 0 || buf_size_in_bytes < needed_size_in_bytes) {
        return JSONFailure;
    }
    written = json_serialize_to_buffer_r(value, buf, 0, 0, ((void*)0));
    if (written < 0) {
        return JSONFailure;
    }
    return JSONSuccess;
}
