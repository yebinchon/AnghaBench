
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 int uv_nmi_action ;

__attribute__((used)) static inline bool uv_nmi_action_is(const char *action)
{
 return (strncmp(uv_nmi_action, action, strlen(action)) == 0);
}
