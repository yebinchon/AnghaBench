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
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static char *
FUNC2 (const char *droid)
{
  if (FUNC1 (droid, "9"))
    return FUNC0 ("Pie 9");
  else if (FUNC1 (droid, "8.1"))
    return FUNC0 ("Oreo 8.1");
  else if (FUNC1 (droid, "8.0"))
    return FUNC0 ("Oreo 8.0");
  else if (FUNC1 (droid, "7.1"))
    return FUNC0 ("Nougat 7.1");
  else if (FUNC1 (droid, "7.0"))
    return FUNC0 ("Nougat 7.0");
  else if (FUNC1 (droid, "6.0.1"))
    return FUNC0 ("Marshmallow 6.0.1");
  else if (FUNC1 (droid, "6.0"))
    return FUNC0 ("Marshmallow 6.0");
  else if (FUNC1 (droid, "5.1"))
    return FUNC0 ("Lollipop 5.1");
  else if (FUNC1 (droid, "5.0"))
    return FUNC0 ("Lollipop 5.0");
  else if (FUNC1 (droid, "4.4"))
    return FUNC0 ("KitKat 4.4");
  else if (FUNC1 (droid, "4.3"))
    return FUNC0 ("Jelly Bean 4.3");
  else if (FUNC1 (droid, "4.2"))
    return FUNC0 ("Jelly Bean 4.2");
  else if (FUNC1 (droid, "4.1"))
    return FUNC0 ("Jelly Bean 4.1");
  else if (FUNC1 (droid, "4.0"))
    return FUNC0 ("Ice Cream Sandwich 4.0");
  else if (FUNC1 (droid, "3."))
    return FUNC0 ("Honeycomb 3");
  else if (FUNC1 (droid, "2.3"))
    return FUNC0 ("Gingerbread 2.3");
  else if (FUNC1 (droid, "2.2"))
    return FUNC0 ("Froyo 2.2");
  else if (FUNC1 (droid, "2.0") || FUNC1 (droid, "2.1"))
    return FUNC0 ("Eclair 2");
  else if (FUNC1 (droid, "1.6"))
    return FUNC0 ("Donut 1.6");
  else if (FUNC1 (droid, "1.5"))
    return FUNC0 ("Cupcake 1.5");
  return FUNC0 (droid);
}