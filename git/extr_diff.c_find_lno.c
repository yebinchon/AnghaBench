
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emit_callback {void* lno_in_postimage; void* lno_in_preimage; } ;


 char* strchr (char const*,char) ;
 void* strtol (char const*,int *,int) ;

__attribute__((used)) static void find_lno(const char *line, struct emit_callback *ecbdata)
{
 const char *p;
 ecbdata->lno_in_preimage = 0;
 ecbdata->lno_in_postimage = 0;
 p = strchr(line, '-');
 if (!p)
  return;
 ecbdata->lno_in_preimage = strtol(p + 1, ((void*)0), 10);
 p = strchr(p, '+');
 if (!p)
  return;
 ecbdata->lno_in_postimage = strtol(p + 1, ((void*)0), 10);
}
