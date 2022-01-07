
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CEDE_LATENCY_PARAM_MAX_LENGTH ;
 int CEDE_LATENCY_TOKEN ;
 int __pa (int ) ;
 int cede_parameters ;
 int memset (int ,int ,int ) ;
 int rtas_call (int ,int,int,int *,int ,int ,int ) ;
 int rtas_token (char*) ;

__attribute__((used)) static int parse_cede_parameters(void)
{
 memset(cede_parameters, 0, CEDE_LATENCY_PARAM_MAX_LENGTH);
 return rtas_call(rtas_token("ibm,get-system-parameter"), 3, 1,
    ((void*)0),
    CEDE_LATENCY_TOKEN,
    __pa(cede_parameters),
    CEDE_LATENCY_PARAM_MAX_LENGTH);
}
