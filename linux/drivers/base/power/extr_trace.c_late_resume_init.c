
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FILEHASH ;
 unsigned int USERHASH ;
 unsigned int hash_value_early_read ;
 int pr_info (char*,unsigned int,unsigned int,unsigned int) ;
 int show_dev_hash (unsigned int) ;
 int show_file_hash (unsigned int) ;

__attribute__((used)) static int late_resume_init(void)
{
 unsigned int val = hash_value_early_read;
 unsigned int user, file, dev;

 user = val % USERHASH;
 val = val / USERHASH;
 file = val % FILEHASH;
 val = val / FILEHASH;
 dev = val ;

 pr_info("  Magic number: %d:%d:%d\n", user, file, dev);
 show_file_hash(file);
 show_dev_hash(dev);
 return 0;
}
