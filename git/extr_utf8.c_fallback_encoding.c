
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_encoding_utf8 (char const*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static const char *fallback_encoding(const char *name)
{







 if (is_encoding_utf8(name))
  return "UTF-8";





 if (!strcasecmp(name, "latin-1"))
  return "ISO-8859-1";

 return name;
}
