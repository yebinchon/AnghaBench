
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int result ;


 int get_be32 (unsigned char const*) ;

__attribute__((used)) static inline uint32_t read_be32(const unsigned char *buffer, size_t *pos)
{
 uint32_t result = get_be32(buffer + *pos);
 (*pos) += sizeof(result);
 return result;
}
