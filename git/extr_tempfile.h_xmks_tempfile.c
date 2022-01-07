
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int dummy; } ;


 struct tempfile* xmks_tempfile_m (char const*,int) ;

__attribute__((used)) static inline struct tempfile *xmks_tempfile(const char *filename_template)
{
 return xmks_tempfile_m(filename_template, 0600);
}
