
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbs_data {int tuners; } ;


 int kfree (int ) ;

__attribute__((used)) static void od_exit(struct dbs_data *dbs_data)
{
 kfree(dbs_data->tuners);
}
