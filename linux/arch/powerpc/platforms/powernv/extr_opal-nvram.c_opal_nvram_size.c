
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int nvram_size ;

__attribute__((used)) static ssize_t opal_nvram_size(void)
{
 return nvram_size;
}
