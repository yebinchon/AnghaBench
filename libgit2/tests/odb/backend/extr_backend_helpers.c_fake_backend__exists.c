
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_odb_backend ;
struct TYPE_3__ {int exists_calls; } ;
typedef TYPE_1__ fake_backend ;


 int GIT_OID_HEXSZ ;
 scalar_t__ GIT_OK ;
 scalar_t__ search_object (int *,TYPE_1__*,int const*,int ) ;

__attribute__((used)) static int fake_backend__exists(git_odb_backend *backend, const git_oid *oid)
{
 fake_backend *fake;

 fake = (fake_backend *)backend;

 fake->exists_calls++;

 return search_object(((void*)0), fake, oid, GIT_OID_HEXSZ) == GIT_OK;
}
