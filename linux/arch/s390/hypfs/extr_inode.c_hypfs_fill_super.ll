; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry*, i32*, i32, i32, i32, %struct.hypfs_sb_info* }
%struct.dentry = type { i32 }
%struct.hypfs_sb_info = type { %struct.dentry* }
%struct.fs_context = type { i32 }
%struct.inode = type { i32*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@HYPFS_MAGIC = common dso_local global i32 0, align 4
@hypfs_s_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Hypervisor filesystem mounted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @hypfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.hypfs_sb_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 5
  %13 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %12, align 8
  store %struct.hypfs_sb_info* %13, %struct.hypfs_sb_info** %6, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @HYPFS_MAGIC, align 4
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 1
  store i32* @hypfs_s_ops, i32** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = load i32, i32* @S_IFDIR, align 4
  %27 = or i32 %26, 493
  %28 = call %struct.inode* @hypfs_make_inode(%struct.super_block* %25, i32 %27)
  store %struct.inode* %28, %struct.inode** %7, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %78

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  store i32* @simple_dir_operations, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call %struct.dentry* @d_make_root(%struct.inode* %39)
  store %struct.dentry* %40, %struct.dentry** %8, align 8
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  store %struct.dentry* %40, %struct.dentry** %42, align 8
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = icmp ne %struct.dentry* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %78

48:                                               ; preds = %34
  %49 = load i64, i64* @MACHINE_IS_VM, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.dentry*, %struct.dentry** %8, align 8
  %53 = call i32 @hypfs_vm_create_files(%struct.dentry* %52)
  store i32 %53, i32* %10, align 4
  br label %57

54:                                               ; preds = %48
  %55 = load %struct.dentry*, %struct.dentry** %8, align 8
  %56 = call i32 @hypfs_diag_create_files(%struct.dentry* %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %78

62:                                               ; preds = %57
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  %64 = call %struct.dentry* @hypfs_create_update_file(%struct.dentry* %63)
  store %struct.dentry* %64, %struct.dentry** %9, align 8
  %65 = load %struct.dentry*, %struct.dentry** %9, align 8
  %66 = call i64 @IS_ERR(%struct.dentry* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.dentry*, %struct.dentry** %9, align 8
  %70 = call i32 @PTR_ERR(%struct.dentry* %69)
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %62
  %72 = load %struct.dentry*, %struct.dentry** %9, align 8
  %73 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %6, align 8
  %74 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %73, i32 0, i32 0
  store %struct.dentry* %72, %struct.dentry** %74, align 8
  %75 = load %struct.super_block*, %struct.super_block** %4, align 8
  %76 = call i32 @hypfs_update_update(%struct.super_block* %75)
  %77 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %68, %60, %45, %31
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.inode* @hypfs_make_inode(%struct.super_block*, i32) #1

declare dso_local %struct.dentry* @d_make_root(%struct.inode*) #1

declare dso_local i32 @hypfs_vm_create_files(%struct.dentry*) #1

declare dso_local i32 @hypfs_diag_create_files(%struct.dentry*) #1

declare dso_local %struct.dentry* @hypfs_create_update_file(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @hypfs_update_update(%struct.super_block*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
