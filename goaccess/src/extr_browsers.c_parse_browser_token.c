
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int browsers_hash_idx; } ;


 int FATAL (char*,int) ;
 int LOG_INVALID (char*) ;
 TYPE_1__ conf ;
 scalar_t__ is_dup (char***,int ,char*) ;
 int set_browser (char***,int ,char*,char*) ;
 size_t strcspn (char*,char*) ;
 size_t strlen (char*) ;
 size_t strspn (char*,char*) ;
 char* trim_str (char*) ;

__attribute__((used)) static void
parse_browser_token (char ***list, char *line, int n)
{
  char *val;
  size_t idx = 0;


  idx = strcspn (line, "\t");
  if (strlen (line) == idx)
    FATAL ("Malformed browser name at line: %d", n);

  line[idx] = '\0';


  val = line + (idx + 1);
  idx = strspn (val, "\t");
  if (strlen (val) == idx)
    FATAL ("Malformed browser category at line: %d", n);
  val = val + idx;
  val = trim_str (val);

  if (is_dup (list, conf.browsers_hash_idx, line)) {
    LOG_INVALID (("Duplicate browser entry: %s", line));
    return;
  }

  set_browser (list, conf.browsers_hash_idx, line, val);
  conf.browsers_hash_idx++;
}
