
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {unsigned int io_opt; } ;



void blk_limits_io_opt(struct queue_limits *limits, unsigned int opt)
{
 limits->io_opt = opt;
}
