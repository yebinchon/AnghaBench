; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @hypfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hypfs_remove(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i32 0, i32 0
  %6 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %6, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = call i32 @d_inode(%struct.dentry* %7)
  %9 = call i32 @inode_lock(i32 %8)
  %10 = load %struct.dentry*, %struct.dentry** %2, align 8
  %11 = call i64 @simple_positive(%struct.dentry* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.dentry*, %struct.dentry** %2, align 8
  %15 = call i64 @d_is_dir(%struct.dentry* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = call i32 @d_inode(%struct.dentry* %18)
  %20 = load %struct.dentry*, %struct.dentry** %2, align 8
  %21 = call i32 @simple_rmdir(i32 %19, %struct.dentry* %20)
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @d_inode(%struct.dentry* %23)
  %25 = load %struct.dentry*, %struct.dentry** %2, align 8
  %26 = call i32 @simple_unlink(i32 %24, %struct.dentry* %25)
  br label %27

27:                                               ; preds = %22, %17
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.dentry*, %struct.dentry** %2, align 8
  %30 = call i32 @d_drop(%struct.dentry* %29)
  %31 = load %struct.dentry*, %struct.dentry** %2, align 8
  %32 = call i32 @dput(%struct.dentry* %31)
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = call i32 @d_inode(%struct.dentry* %33)
  %35 = call i32 @inode_unlock(i32 %34)
  ret void
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @simple_positive(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @simple_rmdir(i32, %struct.dentry*) #1

declare dso_local i32 @simple_unlink(i32, %struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
