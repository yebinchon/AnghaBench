
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t rm_eo; scalar_t__ rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;


 int REG_STARTEND ;
 int assert (int ) ;
 int regexec (int const*,char const*,size_t,TYPE_1__*,int) ;

__attribute__((used)) static inline int regexec_buf(const regex_t *preg, const char *buf, size_t size,
         size_t nmatch, regmatch_t pmatch[], int eflags)
{
 assert(nmatch > 0 && pmatch);
 pmatch[0].rm_so = 0;
 pmatch[0].rm_eo = size;
 return regexec(preg, buf, nmatch, pmatch, eflags | REG_STARTEND);
}
