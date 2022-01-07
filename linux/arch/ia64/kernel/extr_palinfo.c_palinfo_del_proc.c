
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int palinfo_dir ;
 int remove_proc_subtree (char*,int ) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static int palinfo_del_proc(unsigned int hcpu)
{
 char cpustr[3+4+1];

 sprintf(cpustr, "cpu%d", hcpu);
 remove_proc_subtree(cpustr, palinfo_dir);
 return 0;
}
