
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 char* kasprintf (int ,char*,int,char*) ;

__attribute__((used)) static char *memdup_to_str(char *maybe_str, int max_len, gfp_t gfp)
{
 return kasprintf(gfp, "%.*s", max_len, maybe_str);
}
