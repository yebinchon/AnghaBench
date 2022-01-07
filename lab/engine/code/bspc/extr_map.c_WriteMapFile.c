
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 double I_FloatTime () ;
 int Log_Print (char*,...) ;
 int WriteMapFileSafe (int *) ;
 double c_writtenbrushes ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;

void WriteMapFile(char *filename)
{
 FILE *fp;
 double start_time;

 c_writtenbrushes = 0;

 start_time = I_FloatTime();

 Log_Print("writing %s\n", filename);
 fp = fopen(filename, "wb");
 if (!fp)
 {
  Log_Print("can't open %s\n", filename);
  return;
 }
 if (!WriteMapFileSafe(fp))
 {
  fclose(fp);
  Log_Print("error writing map file %s\n", filename);
  return;
 }
 fclose(fp);

 Log_Print("written %d brushes\n", c_writtenbrushes);
 Log_Print("map file written in %5.0f seconds\n", I_FloatTime() - start_time);
}
