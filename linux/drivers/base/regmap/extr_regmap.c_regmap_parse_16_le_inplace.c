
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static void regmap_parse_16_le_inplace(void *buf)
{
 __le16 *b = buf;

 b[0] = le16_to_cpu(b[0]);
}
