
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int dummy; } ;


 struct tempfile* mks_tempfile_tsm (char const*,int,int) ;

__attribute__((used)) static inline struct tempfile *mks_tempfile_ts(const char *filename_template,
            int suffixlen)
{
 return mks_tempfile_tsm(filename_template, suffixlen, 0600);
}
