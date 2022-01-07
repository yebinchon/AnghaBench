
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int error_type ;

__attribute__((used)) static int error_type_get(void *data, u64 *val)
{
 *val = error_type;

 return 0;
}
