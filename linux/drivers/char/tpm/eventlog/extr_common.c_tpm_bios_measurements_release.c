
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct seq_file {scalar_t__ private; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int put_device (int *) ;
 int seq_release (struct inode*,struct file*) ;

__attribute__((used)) static int tpm_bios_measurements_release(struct inode *inode,
      struct file *file)
{
 struct seq_file *seq = (struct seq_file *)file->private_data;
 struct tpm_chip *chip = (struct tpm_chip *)seq->private;

 put_device(&chip->dev);

 return seq_release(inode, file);
}
