
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_key {int key_len; int key; } ;
struct opal_dev {int dummy; } ;


 int OPAL_ADMINSP_UID ;
 int OPAL_PSID_UID ;
 int start_generic_opal_session (struct opal_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int start_PSID_opal_session(struct opal_dev *dev, void *data)
{
 const struct opal_key *okey = data;

 return start_generic_opal_session(dev, OPAL_PSID_UID,
       OPAL_ADMINSP_UID,
       okey->key,
       okey->key_len);
}
