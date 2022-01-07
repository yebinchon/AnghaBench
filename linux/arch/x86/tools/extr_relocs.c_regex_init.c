
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;


 int REG_EXTENDED ;
 int REG_NOSUB ;
 int S_NSYMTYPES ;
 int die (char*,char*) ;
 int regcomp (int *,int ,int) ;
 int regerror (int,int *,char*,int) ;
 int * sym_regex ;
 int * sym_regex_c ;
 int * sym_regex_kernel ;
 int * sym_regex_realmode ;

__attribute__((used)) static void regex_init(int use_real_mode)
{
        char errbuf[128];
        int err;
 int i;

 if (use_real_mode)
  sym_regex = sym_regex_realmode;
 else
  sym_regex = sym_regex_kernel;

 for (i = 0; i < S_NSYMTYPES; i++) {
  if (!sym_regex[i])
   continue;

  err = regcomp(&sym_regex_c[i], sym_regex[i],
         REG_EXTENDED|REG_NOSUB);

  if (err) {
   regerror(err, &sym_regex_c[i], errbuf, sizeof(errbuf));
   die("%s", errbuf);
  }
        }
}
