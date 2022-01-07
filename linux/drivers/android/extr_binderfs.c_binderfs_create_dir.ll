; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32*, i32*, %struct.super_block* }
%struct.super_block = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, i8*)* @binderfs_create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @binderfs_create_dir(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.inode* @d_inode(%struct.dentry* %9)
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = call i32 @inode_lock(%struct.inode* %11)
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.dentry* @binderfs_create_dentry(%struct.dentry* %13, i8* %14)
  store %struct.dentry* %15, %struct.dentry** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call i64 @IS_ERR(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %8, align 8
  %24 = load %struct.super_block*, %struct.super_block** %8, align 8
  %25 = load i32, i32* @S_IFDIR, align 4
  %26 = or i32 %25, 493
  %27 = call %struct.inode* @binderfs_make_inode(%struct.super_block* %24, i32 %26)
  store %struct.inode* %27, %struct.inode** %6, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %20
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = call i32 @dput(%struct.dentry* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.dentry* @ERR_PTR(i32 %34)
  store %struct.dentry* %35, %struct.dentry** %5, align 8
  br label %51

36:                                               ; preds = %20
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  store i32* @simple_dir_inode_operations, i32** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @set_nlink(%struct.inode* %41, i32 2)
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @d_instantiate(%struct.dentry* %43, %struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i32 @inc_nlink(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = call i32 @fsnotify_mkdir(%struct.inode* %48, %struct.dentry* %49)
  br label %51

51:                                               ; preds = %36, %30, %19
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = call i32 @inode_unlock(%struct.inode* %52)
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %54
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.dentry* @binderfs_create_dentry(%struct.dentry*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @binderfs_make_inode(%struct.super_block*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @fsnotify_mkdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
