
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long CLUSTER_MASK ;
 int cluster_tree ;
 long long* clusters ;
 scalar_t__ clusters_num ;
 int lrand48 () ;
 int tree_insert (int ,long long,int ,scalar_t__) ;
 int vkprintf (int,char*,long long) ;

void add_cluster (long long id) {
  vkprintf (2, "adding cluster with id = %lld\n", id & CLUSTER_MASK);
  clusters[clusters_num ++] = id & CLUSTER_MASK;
  cluster_tree = tree_insert (cluster_tree, id & CLUSTER_MASK, lrand48 (), clusters_num - 1);
}
