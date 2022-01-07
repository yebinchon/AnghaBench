
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int loff_t ;


 int memcons_copy (int ,char*,int ,size_t) ;
 int opal_memcons ;

ssize_t opal_msglog_copy(char *to, loff_t pos, size_t count)
{
 return memcons_copy(opal_memcons, to, pos, count);
}
