
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_Value ;


 int json_serialize_to_buffer_r (int const*,int *,int ,int ,char*) ;

size_t json_serialization_size(const JSON_Value *value) {
    char num_buf[1100];
    int res = json_serialize_to_buffer_r(value, ((void*)0), 0, 0, num_buf);
    return res < 0 ? 0 : (size_t)(res + 1);
}
