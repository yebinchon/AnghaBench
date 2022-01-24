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
 char* FUNC0 (char*,char,char) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*,char*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5 (char *ref, char **keyphrase)
{
  char *r, *ptr, *pch, *referer;
  int encoded = 0;

  if (!(FUNC3 (ref, "http://www.google.")) &&
      !(FUNC3 (ref, "http://webcache.googleusercontent.com/")) &&
      !(FUNC3 (ref, "http://translate.googleusercontent.com/")) &&
      !(FUNC3 (ref, "https://www.google.")) &&
      !(FUNC3 (ref, "https://webcache.googleusercontent.com/")) &&
      !(FUNC3 (ref, "https://translate.googleusercontent.com/")))
    return 1;

  /* webcache.googleusercontent */
  if ((r = FUNC3 (ref, "/+&")) != NULL)
    return 1;
  /* webcache.googleusercontent */
  else if ((r = FUNC3 (ref, "/+")) != NULL)
    r += 2;
  /* webcache.googleusercontent */
  else if ((r = FUNC3 (ref, "q=cache:")) != NULL) {
    pch = FUNC2 (r, '+');
    if (pch)
      r += pch - r + 1;
  }
  /* www.google.* or translate.googleusercontent */
  else if ((r = FUNC3 (ref, "&q=")) != NULL ||
           (r = FUNC3 (ref, "?q=")) != NULL)
    r += 3;
  else if ((r = FUNC3 (ref, "%26q%3D")) != NULL ||
           (r = FUNC3 (ref, "%3Fq%3D")) != NULL)
    encoded = 1, r += 7;
  else
    return 1;

  if (!encoded && (ptr = FUNC2 (r, '&')) != NULL)
    *ptr = '\0';
  else if (encoded && (ptr = FUNC3 (r, "%26")) != NULL)
    *ptr = '\0';

  referer = FUNC1 (r);
  if (referer == NULL || *referer == '\0')
    return 1;

  referer = FUNC0 (referer, '+', ' ');
  *keyphrase = FUNC4 (referer);

  return 0;
}