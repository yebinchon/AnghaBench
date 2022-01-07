
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int dummy; } ;


 int OPAL_ADMINSP_UID ;
 int OPAL_ANYBODY_UID ;
 int start_generic_opal_session (struct opal_dev*,int ,int ,int *,int ) ;

__attribute__((used)) static int start_anybodyASP_opal_session(struct opal_dev *dev, void *data)
{
 return start_generic_opal_session(dev, OPAL_ANYBODY_UID,
       OPAL_ADMINSP_UID, ((void*)0), 0);
}
