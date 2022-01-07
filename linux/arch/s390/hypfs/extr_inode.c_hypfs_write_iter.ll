; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.iov_iter = type { i32 }
%struct.super_block = type { i32, %struct.hypfs_sb_info* }
%struct.hypfs_sb_info = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.super_block* }

@EBUSY = common dso_local global i32 0, align 4
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Updating the hypfs tree failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @hypfs_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.hypfs_sb_info*, align 8
  %8 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %9 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @file_inode(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  %17 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %16, align 8
  store %struct.hypfs_sb_info* %17, %struct.hypfs_sb_info** %7, align 8
  %18 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %19 = call i64 @iov_iter_count(%struct.iov_iter* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %7, align 8
  %24 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 (...) @ktime_get_seconds()
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %65

31:                                               ; preds = %2
  %32 = load %struct.super_block*, %struct.super_block** %6, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @hypfs_delete_tree(i32 %34)
  %36 = load i64, i64* @MACHINE_IS_VM, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.super_block*, %struct.super_block** %6, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hypfs_vm_create_files(i32 %41)
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %31
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @hypfs_diag_create_files(i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.super_block*, %struct.super_block** %6, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @hypfs_delete_tree(i32 %55)
  br label %65

57:                                               ; preds = %48
  %58 = load %struct.super_block*, %struct.super_block** %6, align 8
  %59 = call i32 @hypfs_update_update(%struct.super_block* %58)
  %60 = load i64, i64* %8, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @iov_iter_advance(%struct.iov_iter* %62, i64 %63)
  br label %65

65:                                               ; preds = %57, %51, %28
  %66 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %7, align 8
  %67 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_2__* @file_inode(i32) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i32 @hypfs_delete_tree(i32) #1

declare dso_local i32 @hypfs_vm_create_files(i32) #1

declare dso_local i32 @hypfs_diag_create_files(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @hypfs_update_update(%struct.super_block*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
