
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int * prev_data; scalar_t__ hsn; scalar_t__ tsn; } ;



__attribute__((used)) static inline void setup_opal_dev(struct opal_dev *dev)
{
 dev->tsn = 0;
 dev->hsn = 0;
 dev->prev_data = ((void*)0);
}
