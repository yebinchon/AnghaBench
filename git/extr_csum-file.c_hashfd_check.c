
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashfile {int check_fd; } ;


 int O_RDONLY ;
 int O_WRONLY ;
 int die_errno (char*,...) ;
 struct hashfile* hashfd (int,char const*) ;
 int open (char const*,int ) ;

struct hashfile *hashfd_check(const char *name)
{
 int sink, check;
 struct hashfile *f;

 sink = open("/dev/null", O_WRONLY);
 if (sink < 0)
  die_errno("unable to open /dev/null");
 check = open(name, O_RDONLY);
 if (check < 0)
  die_errno("unable to open '%s'", name);
 f = hashfd(sink, name);
 f->check_fd = check;
 return f;
}
