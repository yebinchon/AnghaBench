
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_win32_path ;
struct TYPE_8__ {int Sid; } ;
struct TYPE_9__ {TYPE_1__ User; } ;
typedef TYPE_2__ TOKEN_USER ;
typedef int PSID ;
typedef int * PSECURITY_DESCRIPTOR ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int DACL_SECURITY_INFORMATION ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ EqualSid (int ,int ) ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_OS ;
 int GIT_OK ;
 int GIT_UNUSED (char const*) ;
 int GetCurrentProcess () ;
 scalar_t__ GetNamedSecurityInfoW (int ,int ,int,int *,int *,int *,int *,int **) ;
 int GetTokenInformation (int ,int ,TYPE_2__*,scalar_t__,scalar_t__*) ;
 int IsValidSid (int ) ;
 scalar_t__ IsWellKnownSid (int ,int ) ;
 int LocalFree (int *) ;
 int OWNER_SECURITY_INFORMATION ;
 scalar_t__ OpenProcessToken (int ,int ,int *) ;
 int SE_FILE_OBJECT ;
 int TOKEN_QUERY ;
 int TokenUser ;
 int WinBuiltinAdministratorsSid ;
 int WinLocalSystemSid ;
 int free (TYPE_2__*) ;
 int git__free (TYPE_2__*) ;
 TYPE_2__* git__malloc (scalar_t__) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;

int git_path_validate_system_file_ownership(const char *path)
{

 GIT_UNUSED(path);
 return GIT_OK;
}
