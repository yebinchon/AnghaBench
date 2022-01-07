
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum cache_type { ____Placeholder_cache_type } cache_type ;


 int CACHE_TYPE_NOCACHE ;
 int CLIDR_CTYPE (int ,int) ;
 int MAX_CACHE_LEVEL ;
 int clidr_el1 ;
 int read_sysreg (int ) ;

__attribute__((used)) static inline enum cache_type get_cache_type(int level)
{
 u64 clidr;

 if (level > MAX_CACHE_LEVEL)
  return CACHE_TYPE_NOCACHE;
 clidr = read_sysreg(clidr_el1);
 return CLIDR_CTYPE(clidr, level);
}
