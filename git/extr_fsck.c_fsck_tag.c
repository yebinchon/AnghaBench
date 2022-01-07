
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int object; struct object* tagged; } ;
struct object {int dummy; } ;
struct fsck_options {int dummy; } ;


 int FSCK_MSG_BAD_TAG_OBJECT ;
 int fsck_tag_buffer (struct tag*,char const*,unsigned long,struct fsck_options*) ;
 int report (struct fsck_options*,int *,int ,char*) ;

__attribute__((used)) static int fsck_tag(struct tag *tag, const char *data,
 unsigned long size, struct fsck_options *options)
{
 struct object *tagged = tag->tagged;

 if (!tagged)
  return report(options, &tag->object, FSCK_MSG_BAD_TAG_OBJECT, "could not load tagged object");

 return fsck_tag_buffer(tag, data, size, options);
}
