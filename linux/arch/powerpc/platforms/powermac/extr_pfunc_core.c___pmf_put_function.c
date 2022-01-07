
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmf_function {int ref; } ;


 int kref_put (int *,int ) ;
 int pmf_release_function ;

__attribute__((used)) static inline void __pmf_put_function(struct pmf_function *func)
{
 kref_put(&func->ref, pmf_release_function);
}
