
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct object_context {int path; } ;
typedef int b_oc ;
typedef int a_oc ;


 int free (int ) ;
 int handle_dotdot_1 (char const*,char*,struct rev_info*,int,int,struct object_context*,struct object_context*) ;
 int memset (struct object_context*,int ,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int handle_dotdot(const char *arg,
    struct rev_info *revs, int flags,
    int cant_be_filename)
{
 struct object_context a_oc, b_oc;
 char *dotdot = strstr(arg, "..");
 int ret;

 if (!dotdot)
  return -1;

 memset(&a_oc, 0, sizeof(a_oc));
 memset(&b_oc, 0, sizeof(b_oc));

 *dotdot = '\0';
 ret = handle_dotdot_1(arg, dotdot, revs, flags, cant_be_filename,
         &a_oc, &b_oc);
 *dotdot = '.';

 free(a_oc.path);
 free(b_oc.path);

 return ret;
}
