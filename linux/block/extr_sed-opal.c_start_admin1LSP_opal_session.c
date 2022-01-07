
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_key {int key_len; int key; } ;
struct opal_dev {int dummy; } ;


 int OPAL_ADMIN1_UID ;
 int OPAL_LOCKINGSP_UID ;
 int start_generic_opal_session (struct opal_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int start_admin1LSP_opal_session(struct opal_dev *dev, void *data)
{
 struct opal_key *key = data;

 return start_generic_opal_session(dev, OPAL_ADMIN1_UID,
       OPAL_LOCKINGSP_UID,
       key->key, key->key_len);
}
