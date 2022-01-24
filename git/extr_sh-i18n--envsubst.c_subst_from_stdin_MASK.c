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

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  all_variables ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  variables_set ; 
 char* FUNC7 (char*,size_t) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  static char *buffer;
  static size_t bufmax;
  static size_t buflen;
  int c;

  for (;;)
    {
      c = FUNC0 ();
      if (c == EOF)
	break;
      /* Look for $VARIABLE or ${VARIABLE}.  */
      if (c == '$')
	{
	  unsigned short int opening_brace = 0;
	  unsigned short int closing_brace = 0;

	  c = FUNC0 ();
	  if (c == '{')
	    {
	      opening_brace = 1;
	      c = FUNC0 ();
	    }
	  if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || c == '_')
	    {
	      unsigned short int valid;

	      /* Accumulate the VARIABLE in buffer.  */
	      buflen = 0;
	      do
		{
		  if (buflen >= bufmax)
		    {
		      bufmax = 2 * bufmax + 10;
		      buffer = FUNC7 (buffer, bufmax);
		    }
		  buffer[buflen++] = c;

		  c = FUNC0 ();
		}
	      while ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')
		     || (c >= '0' && c <= '9') || c == '_');

	      if (opening_brace)
		{
		  if (c == '}')
		    {
		      closing_brace = 1;
		      valid = 1;
		    }
		  else
		    {
		      valid = 0;
		      FUNC1 (c);
		    }
		}
	      else
		{
		  valid = 1;
		  FUNC1 (c);
		}

	      if (valid)
		{
		  /* Terminate the variable in the buffer.  */
		  if (buflen >= bufmax)
		    {
		      bufmax = 2 * bufmax + 10;
		      buffer = FUNC7 (buffer, bufmax);
		    }
		  buffer[buflen] = '\0';

		  /* Test whether the variable shall be substituted.  */
		  if (!all_variables
		      && !FUNC6 (&variables_set, buffer))
		    valid = 0;
		}

	      if (valid)
		{
		  /* Substitute the variable's value from the environment.  */
		  const char *env_value = FUNC4 (buffer);

		  if (env_value != NULL)
		    FUNC2 (env_value, stdout);
		}
	      else
		{
		  /* Perform no substitution at all.  Since the buffered input
		     contains no other '$' than at the start, we can just
		     output all the buffered contents.  */
		  FUNC5 ('$');
		  if (opening_brace)
		    FUNC5 ('{');
		  FUNC3 (buffer, buflen, 1, stdout);
		  if (closing_brace)
		    FUNC5 ('}');
		}
	    }
	  else
	    {
	      FUNC1 (c);
	      FUNC5 ('$');
	      if (opening_brace)
		FUNC5 ('{');
	    }
	}
      else
	FUNC5 (c);
    }
}