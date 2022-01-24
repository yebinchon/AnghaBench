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
FUNC2 (const char *osx)
{
  if (FUNC1 (osx, "10.14"))
    return FUNC0 ("macOS 10.14 Mojave");
  else if (FUNC1 (osx, "10.13"))
    return FUNC0 ("macOS 10.13 High Sierra");
  else if (FUNC1 (osx, "10.12"))
    return FUNC0 ("macOS 10.12 Sierra");
  else if (FUNC1 (osx, "10.11"))
    return FUNC0 ("OS X 10.11 El Capitan");
  else if (FUNC1 (osx, "10.10"))
    return FUNC0 ("OS X 10.10 Yosemite");
  else if (FUNC1 (osx, "10.9"))
    return FUNC0 ("OS X 10.9 Mavericks");
  else if (FUNC1 (osx, "10.8"))
    return FUNC0 ("OS X 10.8 Mountain Lion");
  else if (FUNC1 (osx, "10.7"))
    return FUNC0 ("OS X 10.7 Lion");
  else if (FUNC1 (osx, "10.6"))
    return FUNC0 ("OS X 10.6 Snow Leopard");
  else if (FUNC1 (osx, "10.5"))
    return FUNC0 ("OS X 10.5 Leopard");
  else if (FUNC1 (osx, "10.4"))
    return FUNC0 ("OS X 10.4 Tiger");
  else if (FUNC1 (osx, "10.3"))
    return FUNC0 ("OS X 10.3 Panther");
  else if (FUNC1 (osx, "10.2"))
    return FUNC0 ("OS X 10.2 Jaguar");
  else if (FUNC1 (osx, "10.1"))
    return FUNC0 ("OS X 10.1 Puma");
  else if (FUNC1 (osx, "10.0"))
    return FUNC0 ("OS X 10.0 Cheetah");
  return FUNC0 (osx);
}