
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {scalar_t__ tsn; scalar_t__ hsn; } ;


 int parse_and_check_status (struct opal_dev*) ;

__attribute__((used)) static int end_session_cont(struct opal_dev *dev)
{
 dev->hsn = 0;
 dev->tsn = 0;

 return parse_and_check_status(dev);
}
