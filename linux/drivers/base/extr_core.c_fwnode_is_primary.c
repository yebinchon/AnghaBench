
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int secondary; } ;


 int IS_ERR (int ) ;

__attribute__((used)) static inline bool fwnode_is_primary(struct fwnode_handle *fwnode)
{
 return fwnode && !IS_ERR(fwnode->secondary);
}
