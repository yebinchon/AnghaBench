
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BZ2_bzBuffToBuffCompress (char*,unsigned int*,char*,unsigned int,int,int,int ) ;
 int BZ_OK ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int fread (char*,unsigned int,int,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 unsigned int ftell (int *) ;
 char* malloc (unsigned int) ;
 int stderr ;

int
main (int argc, char *argv[])
{
  char *buf;
  char *ident;
  unsigned int i, file_size, need_comma;
  FILE *f_input, *f_output;







  if (argc < 4) {
    fprintf (stderr, "Usage: %s binary_file output_file array_name\n", argv[0]);
    return -1;
  }

  f_input = fopen (argv[1], "rb");
  if (f_input == ((void*)0)) {
    fprintf (stderr, "%s: can't open %s for reading\n", argv[0], argv[1]);
    return -1;
  }

  fseek (f_input, 0, SEEK_END);
  file_size = ftell (f_input);
  fseek (f_input, 0, SEEK_SET);

  if ((buf = malloc (file_size)) == ((void*)0)) {
    fprintf (stderr, "Unable to malloc bin2c.c buffer\n");
    fclose (f_input);
    return -1;
  }

  fread (buf, file_size, 1, f_input);
  fclose (f_input);
  f_output = fopen (argv[2], "w");
  if (f_output == ((void*)0)) {
    fprintf (stderr, "%s: can't open %s for writing\n", argv[0], argv[1]);
    free (buf);
    return -1;
  }

  ident = argv[3];
  need_comma = 0;

  fprintf (f_output, "const char %s[%u] = {", ident, file_size);
  for (i = 0; i < file_size; ++i) {
    if (need_comma)
      fprintf (f_output, ", ");
    else
      need_comma = 1;
    if ((i % 11) == 0)
      fprintf (f_output, "\n\t");
    fprintf (f_output, "0x%.2x", buf[i] & 0xff);
  }
  fprintf (f_output, "\n};\n\n");
  fprintf (f_output, "const int %s_length = %u;\n", ident, file_size);






  fclose (f_output);
  free (buf);

  return 0;
}
