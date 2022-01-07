
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* GIT_NOTES_DEFAULT_REF ;
 int GIT_NOTES_REF_ENVIRONMENT ;
 char* getenv (int ) ;
 char* notes_ref_name ;

const char *default_notes_ref(void)
{
 const char *notes_ref = ((void*)0);
 if (!notes_ref)
  notes_ref = getenv(GIT_NOTES_REF_ENVIRONMENT);
 if (!notes_ref)
  notes_ref = notes_ref_name;
 if (!notes_ref)
  notes_ref = GIT_NOTES_DEFAULT_REF;
 return notes_ref;
}
