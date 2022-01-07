
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_or_sanitize_refname (char const*,int,int *) ;

int check_refname_format(const char *refname, int flags)
{
 return check_or_sanitize_refname(refname, flags, ((void*)0));
}
