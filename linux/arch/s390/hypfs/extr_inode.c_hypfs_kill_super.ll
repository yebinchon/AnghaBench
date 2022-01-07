; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_kill_super.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_kill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.hypfs_sb_info*, i64 }
%struct.hypfs_sb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @hypfs_kill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hypfs_kill_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.hypfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 0
  %6 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %5, align 8
  store %struct.hypfs_sb_info* %6, %struct.hypfs_sb_info** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @hypfs_delete_tree(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %3, align 8
  %18 = icmp ne %struct.hypfs_sb_info* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @hypfs_remove(i64 %27)
  br label %29

29:                                               ; preds = %24, %19, %16
  %30 = load %struct.super_block*, %struct.super_block** %2, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 0
  %32 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %31, align 8
  %33 = call i32 @kfree(%struct.hypfs_sb_info* %32)
  %34 = load %struct.super_block*, %struct.super_block** %2, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 0
  store %struct.hypfs_sb_info* null, %struct.hypfs_sb_info** %35, align 8
  %36 = load %struct.super_block*, %struct.super_block** %2, align 8
  %37 = call i32 @kill_litter_super(%struct.super_block* %36)
  ret void
}

declare dso_local i32 @hypfs_delete_tree(i64) #1

declare dso_local i32 @hypfs_remove(i64) #1

declare dso_local i32 @kfree(%struct.hypfs_sb_info*) #1

declare dso_local i32 @kill_litter_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
