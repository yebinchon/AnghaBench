
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_name ;


 int assert_d_eq (int ,int ,char*,char const*,int) ;
 int mallctl (char*,int *,int *,void*,int) ;
 int mallctl_thread_name_get_impl (char const*,char const*,int) ;

__attribute__((used)) static void
mallctl_thread_name_set_impl(const char *thread_name, const char *func,
    int line) {
 assert_d_eq(mallctl("thread.prof.name", ((void*)0), ((void*)0),
     (void *)&thread_name, sizeof(thread_name)), 0,
     "%s():%d: Unexpected mallctl failure reading thread.prof.name",
     func, line);
 mallctl_thread_name_get_impl(thread_name, func, line);
}
