
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int * HANDLE ;


 int GetError () ;

__attribute__((used)) static WRes HandleToWRes(HANDLE h) { return (h != ((void*)0)) ? 0 : GetError(); }
