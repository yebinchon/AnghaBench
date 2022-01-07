
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct fsck_options {int dummy; } ;


 int FSCK_WARN ;
 int describe_object (struct fsck_options*,struct object*) ;
 int error (char*,int ,char const*) ;
 int warning (char*,int ,char const*) ;

int fsck_error_function(struct fsck_options *o,
 struct object *obj, int msg_type, const char *message)
{
 if (msg_type == FSCK_WARN) {
  warning("object %s: %s", describe_object(o, obj), message);
  return 0;
 }
 error("object %s: %s", describe_object(o, obj), message);
 return 1;
}
