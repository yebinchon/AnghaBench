
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_log_data {int ranges; } ;


 int memset (struct line_log_data*,int ,int) ;
 int range_set_init (int *,int ) ;

__attribute__((used)) static void line_log_data_init(struct line_log_data *r)
{
 memset(r, 0, sizeof(struct line_log_data));
 range_set_init(&r->ranges, 0);
}
