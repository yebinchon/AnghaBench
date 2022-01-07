
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* errstr; } ;
typedef TYPE_1__ GLogItem ;






 int snprintf (int *,int ,char const*,...) ;
 int sprintf (char*,char const*,...) ;
 char* xmalloc (int ) ;

__attribute__((used)) static int
spec_err (GLogItem * logitem, int code, const char spec, const char *tkn)
{
  char *err = ((void*)0);
  const char *fmt = ((void*)0);

  switch (code) {
  case 130:
    fmt = "Token '%s' doesn't match specifier '%%%c'";
    err = xmalloc (snprintf (((void*)0), 0, fmt, (tkn ? tkn : "-"), spec) + 1);
    sprintf (err, fmt, (tkn ? tkn : "-"), spec);
    break;
  case 128:
    fmt = "Token already set for '%%%c' specifier.";
    err = xmalloc (snprintf (((void*)0), 0, fmt, spec) + 1);
    sprintf (err, fmt, spec);
    break;
  case 129:
    fmt = "Token for '%%%c' specifier is NULL.";
    err = xmalloc (snprintf (((void*)0), 0, fmt, spec) + 1);
    sprintf (err, fmt, spec);
    break;
  case 131:
    fmt = "Missing braces '%s' and ignore chars for specifier '%%%c'";
    err = xmalloc (snprintf (((void*)0), 0, fmt, (tkn ? tkn : "-"), spec) + 1);
    sprintf (err, fmt, (tkn ? tkn : "-"), spec);
    break;
  }
  logitem->errstr = err;

  return 1;
}
