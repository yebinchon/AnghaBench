
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;


 int REG_EXTENDED ;
 int REG_NOSUB ;
 int die (char*,char*) ;
 int regcomp (int *,int ,int) ;
 int regerror (int,int *,char*,int) ;
 int regex_sym_kernel ;
 int sym_regex_c ;

__attribute__((used)) static void regex_init(void)
{
 char errbuf[128];
 int err;

 err = regcomp(&sym_regex_c, regex_sym_kernel,
   REG_EXTENDED|REG_NOSUB);

 if (err) {
  regerror(err, &sym_regex_c, errbuf, sizeof(errbuf));
  die("%s", errbuf);
 }
}
