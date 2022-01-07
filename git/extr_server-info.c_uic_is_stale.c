
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info_ctx {int * old_fp; } ;



__attribute__((used)) static int uic_is_stale(const struct update_info_ctx *uic)
{
 return uic->old_fp == ((void*)0);
}
