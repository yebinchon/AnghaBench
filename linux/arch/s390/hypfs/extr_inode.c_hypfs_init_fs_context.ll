; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, %struct.hypfs_sb_info* }
%struct.hypfs_sb_info = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hypfs_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @hypfs_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.hypfs_sb_info*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hypfs_sb_info* @kzalloc(i32 12, i32 %5)
  store %struct.hypfs_sb_info* %6, %struct.hypfs_sb_info** %4, align 8
  %7 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %4, align 8
  %8 = icmp ne %struct.hypfs_sb_info* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %13, i32 0, i32 2
  %15 = call i32 @mutex_init(i32* %14)
  %16 = call i32 (...) @current_uid()
  %17 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %4, align 8
  %18 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @current_gid()
  %20 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %4, align 8
  %23 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %24 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %23, i32 0, i32 1
  store %struct.hypfs_sb_info* %22, %struct.hypfs_sb_info** %24, align 8
  %25 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %26 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %25, i32 0, i32 0
  store i32* @hypfs_context_ops, i32** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.hypfs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @current_gid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
