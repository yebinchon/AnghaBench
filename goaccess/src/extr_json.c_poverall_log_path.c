
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** filenames; int filenames_idx; } ;
typedef int GJSON ;


 int TAB ;
 TYPE_1__ conf ;
 int escape_json_output (int *,char*) ;
 int pjson (int *,char*,...) ;

__attribute__((used)) static void
poverall_log_path (GJSON * json, int idx, int isp)
{
  pjson (json, "%.*s\"", isp, TAB);
  if (conf.filenames[idx][0] == '-' && conf.filenames[idx][1] == '\0')
    pjson (json, "STDIN");
  else
    escape_json_output (json, (char *) conf.filenames[idx]);
  pjson (json, conf.filenames_idx - 1 != idx ? "\",\n" : "\"");
}
