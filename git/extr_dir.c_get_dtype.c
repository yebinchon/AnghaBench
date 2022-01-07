
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct index_state {int dummy; } ;
struct dirent {int dummy; } ;


 int DTYPE (struct dirent*) ;
 int DT_DIR ;
 int DT_LNK ;
 int DT_REG ;
 int DT_UNKNOWN ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int get_index_dtype (struct index_state*,char const*,int) ;
 scalar_t__ lstat (char const*,struct stat*) ;

__attribute__((used)) static int get_dtype(struct dirent *de, struct index_state *istate,
       const char *path, int len)
{
 int dtype = de ? DTYPE(de) : DT_UNKNOWN;
 struct stat st;

 if (dtype != DT_UNKNOWN)
  return dtype;
 dtype = get_index_dtype(istate, path, len);
 if (dtype != DT_UNKNOWN)
  return dtype;
 if (lstat(path, &st))
  return dtype;
 if (S_ISREG(st.st_mode))
  return DT_REG;
 if (S_ISDIR(st.st_mode))
  return DT_DIR;
 if (S_ISLNK(st.st_mode))
  return DT_LNK;
 return dtype;
}
