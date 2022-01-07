
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_path (char*) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int ti_cpufreq_of_match ;

__attribute__((used)) static const struct of_device_id *ti_cpufreq_match_node(void)
{
 struct device_node *np;
 const struct of_device_id *match;

 np = of_find_node_by_path("/");
 match = of_match_node(ti_cpufreq_of_match, np);
 of_node_put(np);

 return match;
}
