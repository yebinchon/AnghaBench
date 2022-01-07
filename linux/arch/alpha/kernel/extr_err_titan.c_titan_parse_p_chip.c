
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int titan_parse_p_agperror (int,int ,int) ;
 int titan_parse_p_perror (int,int,int ,int) ;
 int titan_parse_p_serror (int,int ,int) ;

__attribute__((used)) static int
titan_parse_p_chip(int which, u64 serror, u64 gperror,
     u64 aperror, u64 agperror, int print)
{
 int status = MCHK_DISPOSITION_UNKNOWN_ERROR;
 status |= titan_parse_p_serror(which, serror, print);
 status |= titan_parse_p_perror(which, 0, gperror, print);
 status |= titan_parse_p_perror(which, 1, aperror, print);
 status |= titan_parse_p_agperror(which, agperror, print);
 return status;
}
