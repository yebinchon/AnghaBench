
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int extended_cpuid_level; char* x86_model_id; } ;


 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int isspace (char) ;

__attribute__((used)) static void get_model_name(struct cpuinfo_x86 *c)
{
 unsigned int *v;
 char *p, *q, *s;

 if (c->extended_cpuid_level < 0x80000004)
  return;

 v = (unsigned int *)c->x86_model_id;
 cpuid(0x80000002, &v[0], &v[1], &v[2], &v[3]);
 cpuid(0x80000003, &v[4], &v[5], &v[6], &v[7]);
 cpuid(0x80000004, &v[8], &v[9], &v[10], &v[11]);
 c->x86_model_id[48] = 0;


 p = q = s = &c->x86_model_id[0];

 while (*p == ' ')
  p++;

 while (*p) {

  if (!isspace(*p))
   s = q;

  *q++ = *p++;
 }

 *(s + 1) = '\0';
}
