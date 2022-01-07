
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DB_VECTOR ;
 int is_exception_n (int ,int ) ;

__attribute__((used)) static inline bool is_debug(u32 intr_info)
{
 return is_exception_n(intr_info, DB_VECTOR);
}
