
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cb ) (char const*,int *,int ) ;int cb_data; int repo; } ;
typedef TYPE_1__ tag_cb_data ;
typedef int git_oid ;


 int GIT_REFS_TAGS_DIR ;
 scalar_t__ git__prefixcmp (char const*,int ) ;
 int git_error_set_after_callback_function (int,char*) ;
 int git_reference_name_to_id (int *,int ,char const*) ;
 int stub1 (char const*,int *,int ) ;

__attribute__((used)) static int tags_cb(const char *ref, void *data)
{
 int error;
 git_oid oid;
 tag_cb_data *d = (tag_cb_data *)data;

 if (git__prefixcmp(ref, GIT_REFS_TAGS_DIR) != 0)
  return 0;

 if (!(error = git_reference_name_to_id(&oid, d->repo, ref))) {
  if ((error = d->cb(ref, &oid, d->cb_data)) != 0)
   git_error_set_after_callback_function(error, "git_tag_foreach");
 }

 return error;
}
