; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_make_inode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_make_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.hypfs_sb_info* }
%struct.hypfs_sb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @hypfs_make_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @hypfs_make_inode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.hypfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.inode* @new_inode(%struct.super_block* %7)
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = icmp ne %struct.inode* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %13, align 8
  store %struct.hypfs_sb_info* %14, %struct.hypfs_sb_info** %6, align 8
  %15 = call i32 (...) @get_next_ino()
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %6, align 8
  %22 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %6, align 8
  %27 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @current_time(%struct.inode* %31)
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @S_ISDIR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %11
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @set_nlink(%struct.inode* %43, i32 2)
  br label %45

45:                                               ; preds = %42, %11
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %47
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
