
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_BLOB ;
 int assert_object_oid (char const*,char const*,int ) ;

__attribute__((used)) static void assert_blob_oid(const char* revision, const char* expected_oid)
{
 assert_object_oid(revision, expected_oid, GIT_OBJECT_BLOB);
}
