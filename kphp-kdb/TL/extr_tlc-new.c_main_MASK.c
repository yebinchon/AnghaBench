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
struct tree {int dummy; } ;
struct parse {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int dynamic_data_buffer_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  output_expressions ; 
 int /*<<< orphan*/  schema_version ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 struct parse* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct tree*) ; 
 struct tree* FUNC7 (struct parse*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11 (int argc, char **argv) {
  int i;
  char *expr_filename = NULL;
  char *vkext_file = 0;
  FUNC4 ();
  while ((i = FUNC2 (argc, argv, "Eho:ve:w:")) != -1) {
    switch (i) {
    case 'E':
      output_expressions++;
      break;
    case 'o':
      expr_filename = optarg;
      break;
    case 'h':
      FUNC9 ();
      return 2;
    case 'e':
      vkext_file = optarg;
      break;
    case 'w':
      schema_version = FUNC0 (optarg);
      break;
    case 'v':
      verbosity++;
      break;
    }
  }

  dynamic_data_buffer_size = (1 << 30);

  if (argc != optind + 1) {
    FUNC9 ();
  }
  FUNC3 ();
 
  struct parse *P = FUNC5 (argv[optind]);
  if (!P) {
    return 0;
  }
  struct tree *T;
  if (!(T = FUNC7 (P))) {
    FUNC1 (stderr, "Error in parse:\n");
    FUNC8 ();
    return 0;
  } else {
    if (verbosity) {
      FUNC1 (stderr, "Parse ok\n");
    }
    if (!FUNC6 (T)) {
      if (verbosity) {
        FUNC1 (stderr, "Fail\n");
      }
      return 1;
    } else {
      if (verbosity) {
        FUNC1 (stderr, "Ok\n");
      }
    }
  }
  if (vkext_file) {
    FUNC10 (vkext_file);
  }
  return 0;
}