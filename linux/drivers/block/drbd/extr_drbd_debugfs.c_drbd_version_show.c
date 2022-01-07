
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int API_VERSION ;
 int PRO_VERSION_MAX ;
 int PRO_VERSION_MIN ;
 int REL_VERSION ;
 int drbd_buildtag () ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int drbd_version_show(struct seq_file *m, void *ignored)
{
 seq_printf(m, "# %s\n", drbd_buildtag());
 seq_printf(m, "VERSION=%s\n", REL_VERSION);
 seq_printf(m, "API_VERSION=%u\n", API_VERSION);
 seq_printf(m, "PRO_VERSION_MIN=%u\n", PRO_VERSION_MIN);
 seq_printf(m, "PRO_VERSION_MAX=%u\n", PRO_VERSION_MAX);
 return 0;
}
