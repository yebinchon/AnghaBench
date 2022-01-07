; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_dir_close.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_dir_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { %struct.dentry* }
%struct.spu_context = type { i32 }
%struct.TYPE_4__ = type { %struct.spu_context* }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @spufs_dir_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_dir_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.spu_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  %16 = call %struct.inode* @d_inode(%struct.dentry* %15)
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = call %struct.inode* @d_inode(%struct.dentry* %17)
  %19 = call %struct.TYPE_4__* @SPUFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.spu_context*, %struct.spu_context** %20, align 8
  store %struct.spu_context* %21, %struct.spu_context** %5, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* @I_MUTEX_PARENT, align 4
  %24 = call i32 @inode_lock_nested(%struct.inode* %22, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = call i32 @spufs_rmdir(%struct.inode* %25, %struct.dentry* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 @inode_unlock(%struct.inode* %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = call i32 @dcache_dir_close(%struct.inode* %32, %struct.file* %33)
  ret i32 %34
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local i32 @spufs_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dcache_dir_close(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
