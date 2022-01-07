; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_update_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_update_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.hypfs_sb_info* }
%struct.hypfs_sb_info = type { i32, i32 }
%struct.inode = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @hypfs_update_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hypfs_update_update(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.hypfs_sb_info*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %6, align 8
  store %struct.hypfs_sb_info* %7, %struct.hypfs_sb_info** %3, align 8
  %8 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @d_inode(i32 %10)
  store %struct.inode* %11, %struct.inode** %4, align 8
  %12 = call i32 (...) @ktime_get_seconds()
  %13 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @current_time(%struct.inode* %15)
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  store i32 %16, i32* %22, align 4
  ret void
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @ktime_get_seconds(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
