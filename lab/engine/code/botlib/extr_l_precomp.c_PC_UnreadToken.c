
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;
typedef int source_t ;


 int PC_UnreadSourceToken (int *,int *) ;

void PC_UnreadToken(source_t *source, token_t *token)
{
 PC_UnreadSourceToken(source, token);
}
