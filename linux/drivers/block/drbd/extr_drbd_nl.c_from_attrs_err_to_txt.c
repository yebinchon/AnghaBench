
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int ENOMSG ;
 int EOPNOTSUPP ;

__attribute__((used)) static const char *from_attrs_err_to_txt(int err)
{
 return err == -ENOMSG ? "required attribute missing" :
  err == -EOPNOTSUPP ? "unknown mandatory attribute" :
  err == -EEXIST ? "can not change invariant setting" :
  "invalid attribute value";
}
