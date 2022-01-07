
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct rev_info {int dummy; } ;
struct recent_data {int timestamp; struct rev_info* revs; } ;


 int FOR_EACH_OBJECT_LOCAL_ONLY ;
 int add_recent_loose ;
 int add_recent_packed ;
 int for_each_loose_object (int ,struct recent_data*,int ) ;
 int for_each_packed_object (int ,struct recent_data*,int ) ;

int add_unseen_recent_objects_to_traversal(struct rev_info *revs,
        timestamp_t timestamp)
{
 struct recent_data data;
 int r;

 data.revs = revs;
 data.timestamp = timestamp;

 r = for_each_loose_object(add_recent_loose, &data,
      FOR_EACH_OBJECT_LOCAL_ONLY);
 if (r)
  return r;
 return for_each_packed_object(add_recent_packed, &data,
          FOR_EACH_OBJECT_LOCAL_ONLY);
}
