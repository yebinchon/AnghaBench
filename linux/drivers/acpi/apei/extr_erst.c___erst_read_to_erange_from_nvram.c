
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ENOSYS ;
 int pr_unimpl_nvram () ;

__attribute__((used)) static int __erst_read_to_erange_from_nvram(u64 record_id, u64 *offset)
{
 pr_unimpl_nvram();
 return -ENOSYS;
}
