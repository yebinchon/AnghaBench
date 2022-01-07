
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int die (char*,int) ;
 int fclose (int *) ;
 int for_each_note (int *,int ,int ,int *) ;
 int marksfilename ;
 int note2mark_cb ;
 int * xfopen (int ,char*) ;

__attribute__((used)) static void regenerate_marks(void)
{
 int ret;
 FILE *marksfile = xfopen(marksfilename, "w+");

 ret = for_each_note(((void*)0), 0, note2mark_cb, marksfile);
 if (ret)
  die("Regeneration of marks failed, returned %d.", ret);
 fclose(marksfile);
}
