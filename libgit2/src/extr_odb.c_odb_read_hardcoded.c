
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int data; scalar_t__ len; int type; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;
typedef int git_object_t ;


 int GIT_ERROR_CHECK_ALLOC (int ) ;
 int GIT_OBJECT_INVALID ;
 int git__calloc (int,int) ;
 int odb_hardcoded_type (int const*) ;

__attribute__((used)) static int odb_read_hardcoded(bool *found, git_rawobj *raw, const git_oid *id)
{
 git_object_t type;

 *found = 0;

 if ((type = odb_hardcoded_type(id)) == GIT_OBJECT_INVALID)
  return 0;

 raw->type = type;
 raw->len = 0;
 raw->data = git__calloc(1, sizeof(uint8_t));
 GIT_ERROR_CHECK_ALLOC(raw->data);

 *found = 1;
 return 0;
}
