
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static void regmap_parse_32_le_inplace(void *buf)
{
 __le32 *b = buf;

 b[0] = le32_to_cpu(b[0]);
}
