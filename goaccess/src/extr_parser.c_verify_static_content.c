
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int static_file_max_len; int static_file_idx; char** static_files; scalar_t__ all_static_files; } ;


 TYPE_1__ conf ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

__attribute__((used)) static int
verify_static_content (const char *req)
{
  const char *nul = req + strlen (req);
  const char *ext = ((void*)0), *pch = ((void*)0);
  int elen = 0, i;

  if (strlen (req) < conf.static_file_max_len)
    return 0;

  for (i = 0; i < conf.static_file_idx; ++i) {
    ext = conf.static_files[i];
    if (ext == ((void*)0) || *ext == '\0')
      continue;

    elen = strlen (ext);
    if (conf.all_static_files && (pch = strchr (req, '?')) != ((void*)0) &&
        pch - req > elen) {
      pch -= elen;
      if (0 == strncasecmp (ext, pch, elen))
        return 1;
      continue;
    }

    if (!strncasecmp (nul - elen, ext, elen))
      return 1;
  }

  return 0;
}
