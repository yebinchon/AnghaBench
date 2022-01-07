
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository_format {int dummy; } ;
typedef int fresh ;


 struct repository_format REPOSITORY_FORMAT_INIT ;
 int memcpy (struct repository_format*,struct repository_format const*,int) ;

__attribute__((used)) static void init_repository_format(struct repository_format *format)
{
 const struct repository_format fresh = REPOSITORY_FORMAT_INIT;

 memcpy(format, &fresh, sizeof(fresh));
}
