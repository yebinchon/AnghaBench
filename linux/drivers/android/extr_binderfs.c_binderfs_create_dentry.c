
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EEXIST ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static struct dentry *binderfs_create_dentry(struct dentry *parent,
          const char *name)
{
 struct dentry *dentry;

 dentry = lookup_one_len(name, parent, strlen(name));
 if (IS_ERR(dentry))
  return dentry;


 if (d_really_is_positive(dentry)) {
  dput(dentry);
  return ERR_PTR(-EEXIST);
 }

 return dentry;
}
