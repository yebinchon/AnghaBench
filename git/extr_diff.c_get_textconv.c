
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdiff_driver {int dummy; } ;
struct repository {int index; } ;
struct diff_filespec {int driver; } ;


 int DIFF_FILE_VALID (struct diff_filespec*) ;
 int diff_filespec_load_driver (struct diff_filespec*,int ) ;
 struct userdiff_driver* userdiff_get_textconv (struct repository*,int ) ;

struct userdiff_driver *get_textconv(struct repository *r,
         struct diff_filespec *one)
{
 if (!DIFF_FILE_VALID(one))
  return ((void*)0);

 diff_filespec_load_driver(one, r->index);
 return userdiff_get_textconv(r, one->driver);
}
