
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int count ;


 int assert_d_eq (int ,int ,char*) ;
 int config_stats ;
 int mallctl (char*,void*,size_t*,int *,int ) ;

__attribute__((used)) static size_t
zero_reallocs() {
 if (!config_stats) {
  return 0;
 }
 size_t count = 12345;
 size_t sz = sizeof(count);

 assert_d_eq(mallctl("stats.zero_reallocs", (void *)&count, &sz,
     ((void*)0), 0), 0, "Unexpected mallctl failure");
 return count;
}
