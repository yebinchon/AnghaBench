; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mss_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mss_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.spu_context* }
%struct.spu_context = type { i32, i32 }
%struct.spufs_inode_info = type { i32, %struct.spu_context* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @spufs_mss_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_mss_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.spufs_inode_info*, align 8
  %6 = alloca %struct.spu_context*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.spufs_inode_info* @SPUFS_I(%struct.inode* %7)
  store %struct.spufs_inode_info* %8, %struct.spufs_inode_info** %5, align 8
  %9 = load %struct.spufs_inode_info*, %struct.spufs_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.spufs_inode_info, %struct.spufs_inode_info* %9, i32 0, i32 1
  %11 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  store %struct.spu_context* %11, %struct.spu_context** %6, align 8
  %12 = load %struct.spufs_inode_info*, %struct.spufs_inode_info** %5, align 8
  %13 = getelementptr inbounds %struct.spufs_inode_info, %struct.spufs_inode_info* %12, i32 0, i32 1
  %14 = load %struct.spu_context*, %struct.spu_context** %13, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  store %struct.spu_context* %14, %struct.spu_context** %16, align 8
  %17 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %18 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.spufs_inode_info*, %struct.spufs_inode_info** %5, align 8
  %21 = getelementptr inbounds %struct.spufs_inode_info, %struct.spufs_inode_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %30 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %33 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = call i32 @nonseekable_open(%struct.inode* %35, %struct.file* %36)
  ret i32 %37
}

declare dso_local %struct.spufs_inode_info* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
