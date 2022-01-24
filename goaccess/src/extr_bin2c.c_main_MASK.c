#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*,unsigned int*,char*,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int BZ_OK ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC9 (int argc, char *argv[])
{
  char *buf;
  char *ident;
  unsigned int i, file_size, need_comma;
  FILE *f_input, *f_output;

#ifdef USE_BZ2
  int status;
  char *bz2_buf;
  unsigned int uncompressed_size, bz2_size;
#endif

  if (argc < 4) {
    FUNC3 (&stderr, "Usage: %s binary_file output_file array_name\n", argv[0]);
    return -1;
  }

  f_input = FUNC2 (argv[1], "rb");
  if (f_input == NULL) {
    FUNC3 (&stderr, "%s: can't open %s for reading\n", argv[0], argv[1]);
    return -1;
  }
  // Get the file length
  FUNC6 (f_input, 0, SEEK_END);
  file_size = FUNC7 (f_input);
  FUNC6 (f_input, 0, SEEK_SET);

  if ((buf = FUNC8 (file_size)) == NULL) {
    FUNC3 (&stderr, "Unable to malloc bin2c.c buffer\n");
    FUNC1 (f_input);
    return -1;
  }

  FUNC4 (buf, file_size, 1, f_input);
  FUNC1 (f_input);

#ifdef USE_BZ2
  // allocate for bz2.
  bz2_size = (file_size + file_size / 100 + 1) + 600; // as per the documentation

  if ((bz2_buf = malloc (bz2_size)) == NULL) {
    fprintf (stderr, "Unable to malloc bin2c.c buffer\n");
    free (buf);
    return -1;
  }
  // compress the data
  status =
    BZ2_bzBuffToBuffCompress (bz2_buf, &bz2_size, buf, file_size, 9, 1, 0);
  if (status != BZ_OK) {
    fprintf (stderr, "Failed to compress data: error %i\n", status);
    free (buf);
    free (bz2_buf);
    return -1;
  }
  // and be very lazy
  free (buf);
  uncompressed_size = file_size;
  file_size = bz2_size;
  buf = bz2_buf;
#endif

  f_output = FUNC2 (argv[2], "w");
  if (f_output == NULL) {
    FUNC3 (&stderr, "%s: can't open %s for writing\n", argv[0], argv[1]);
    FUNC5 (buf);
    return -1;
  }

  ident = argv[3];
  need_comma = 0;

  FUNC3 (f_output, "const char %s[%u] = {", ident, file_size);
  for (i = 0; i < file_size; ++i) {
    if (need_comma)
      FUNC3 (f_output, ", ");
    else
      need_comma = 1;
    if ((i % 11) == 0)
      FUNC3 (f_output, "\n\t");
    FUNC3 (f_output, "0x%.2x", buf[i] & 0xff);
  }
  FUNC3 (f_output, "\n};\n\n");
  FUNC3 (f_output, "const int %s_length = %u;\n", ident, file_size);

#ifdef USE_BZ2
  fprintf (f_output, "const int %s_length_uncompressed = %u;\n", ident,
           uncompressed_size);
#endif

  FUNC1 (f_output);
  FUNC5 (buf);

  return 0;
}