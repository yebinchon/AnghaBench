
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int unpack_object_header_buffer (unsigned char const*,unsigned long,int*,unsigned long*) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
 enum object_type type;
 unsigned long len;

 unpack_object_header_buffer((const unsigned char *)data,
        (unsigned long)size, &type, &len);

 return 0;
}
