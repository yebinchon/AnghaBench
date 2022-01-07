
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int needle; } ;
typedef int FILE ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CPUINFO_BUFSIZE ;
 int RBCFG_SOC_UNKNOWN ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 TYPE_1__* rbcfg_socs ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;
 scalar_t__ strstr (char*,int ) ;

__attribute__((used)) static int cpuinfo_find_soc(void)
{
 FILE *fp;
 char temp[CPUINFO_BUFSIZE];
 char *haystack, *needle;
 int i, found = 0, soc_type = RBCFG_SOC_UNKNOWN;

 fp = fopen("/proc/cpuinfo", "r");
 if (!fp)
  goto end;


 needle = "system type";
 while(fgets(temp, CPUINFO_BUFSIZE, fp)) {
  if (!strncmp(temp, needle, strlen(needle))) {
   found = 1;
   break;
  }
 }

 fclose(fp);


 if (!found)
  goto end;


 haystack = strchr(temp, ':');


 for (i = 0; i < ARRAY_SIZE(rbcfg_socs); i++) {
  if ((strstr(haystack, rbcfg_socs[i].needle))) {
   soc_type = rbcfg_socs[i].type;
   break;
  }
 }

end:
 return soc_type;
}
