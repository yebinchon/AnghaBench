
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int ERANGE ;
 size_t OPAL_UID_LENGTH ;
 size_t OPAL_USER1_UID ;
 int memcpy (scalar_t__*,int ,size_t) ;
 int * opaluid ;
 int pr_debug (char*) ;

__attribute__((used)) static int build_locking_user(u8 *buffer, size_t length, u8 lr)
{
 if (length > OPAL_UID_LENGTH) {
  pr_debug("Can't build locking range user. Length OOB\n");
  return -ERANGE;
 }

 memcpy(buffer, opaluid[OPAL_USER1_UID], OPAL_UID_LENGTH);

 buffer[7] = lr + 1;

 return 0;
}
