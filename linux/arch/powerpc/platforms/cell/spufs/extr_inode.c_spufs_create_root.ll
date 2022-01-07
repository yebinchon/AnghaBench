; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_create_root.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_create_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_context = type { %struct.spufs_fs_context* }
%struct.spufs_fs_context = type { i32, i32, i32 }
%struct.inode = type { i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@spu_management_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @spufs_create_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_create_root(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.spufs_fs_context*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %8 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %8, i32 0, i32 0
  %10 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %9, align 8
  store %struct.spufs_fs_context* %10, %struct.spufs_fs_context** %6, align 8
  %11 = load i32, i32* @spu_management_ops, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %61

16:                                               ; preds = %2
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %6, align 8
  %20 = getelementptr inbounds %struct.spufs_fs_context, %struct.spufs_fs_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  %23 = call %struct.inode* @spufs_new_inode(%struct.super_block* %17, i32 %22)
  store %struct.inode* %23, %struct.inode** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %16
  %30 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %6, align 8
  %31 = getelementptr inbounds %struct.spufs_fs_context, %struct.spufs_fs_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %6, align 8
  %36 = getelementptr inbounds %struct.spufs_fs_context, %struct.spufs_fs_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  store i32* @simple_dir_operations, i32** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call %struct.TYPE_2__* @SPUFS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i32 @inc_nlink(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @d_make_root(%struct.inode* %49)
  %51 = load %struct.super_block*, %struct.super_block** %4, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.super_block*, %struct.super_block** %4, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %29
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57, %26, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.inode* @spufs_new_inode(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_2__* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
