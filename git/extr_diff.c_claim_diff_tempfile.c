
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_tempfile {int name; } ;


 int ARRAY_SIZE (struct diff_tempfile*) ;
 int BUG (char*) ;
 struct diff_tempfile* diff_temp ;

__attribute__((used)) static struct diff_tempfile *claim_diff_tempfile(void)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(diff_temp); i++)
  if (!diff_temp[i].name)
   return diff_temp + i;
 BUG("diff is failing to clean up its tempfiles");
}
