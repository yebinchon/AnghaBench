
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int dummy; } ;


 int ERANGE ;
 int pr_debug (char*,size_t) ;
 size_t remaining_size (struct opal_dev*) ;

__attribute__((used)) static bool can_add(int *err, struct opal_dev *cmd, size_t len)
{
 if (*err)
  return 0;

 if (remaining_size(cmd) < len) {
  pr_debug("Error adding %zu bytes: end of buffer.\n", len);
  *err = -ERANGE;
  return 0;
 }

 return 1;
}
