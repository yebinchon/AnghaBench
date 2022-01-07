
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct gendisk {struct aoedev* private_data; } ;
struct aoedev {scalar_t__ nopen; int lock; int aoeminor; int aoemajor; } ;
typedef int fmode_t ;


 int aoecmd_cfg (int ,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
aoeblk_release(struct gendisk *disk, fmode_t mode)
{
 struct aoedev *d = disk->private_data;
 ulong flags;

 spin_lock_irqsave(&d->lock, flags);

 if (--d->nopen == 0) {
  spin_unlock_irqrestore(&d->lock, flags);
  aoecmd_cfg(d->aoemajor, d->aoeminor);
  return;
 }
 spin_unlock_irqrestore(&d->lock, flags);
}
