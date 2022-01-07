; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, %struct.spufs_sb_info*, %struct.spufs_fs_context* }
%struct.spufs_sb_info = type { i32 }
%struct.spufs_fs_context = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@spufs_context_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @spufs_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.spufs_fs_context*, align 8
  %5 = alloca %struct.spufs_sb_info*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kzalloc(i32 12, i32 %6)
  %8 = bitcast i8* %7 to %struct.spufs_fs_context*
  store %struct.spufs_fs_context* %8, %struct.spufs_fs_context** %4, align 8
  %9 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %4, align 8
  %10 = icmp ne %struct.spufs_fs_context* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 4, i32 %13)
  %15 = bitcast i8* %14 to %struct.spufs_sb_info*
  store %struct.spufs_sb_info* %15, %struct.spufs_sb_info** %5, align 8
  %16 = load %struct.spufs_sb_info*, %struct.spufs_sb_info** %5, align 8
  %17 = icmp ne %struct.spufs_sb_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %36

19:                                               ; preds = %12
  %20 = call i32 (...) @current_uid()
  %21 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %4, align 8
  %22 = getelementptr inbounds %struct.spufs_fs_context, %struct.spufs_fs_context* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = call i32 (...) @current_gid()
  %24 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %4, align 8
  %25 = getelementptr inbounds %struct.spufs_fs_context, %struct.spufs_fs_context* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %4, align 8
  %27 = getelementptr inbounds %struct.spufs_fs_context, %struct.spufs_fs_context* %26, i32 0, i32 0
  store i32 493, i32* %27, align 4
  %28 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %4, align 8
  %29 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %30 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %29, i32 0, i32 2
  store %struct.spufs_fs_context* %28, %struct.spufs_fs_context** %30, align 8
  %31 = load %struct.spufs_sb_info*, %struct.spufs_sb_info** %5, align 8
  %32 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %33 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %32, i32 0, i32 1
  store %struct.spufs_sb_info* %31, %struct.spufs_sb_info** %33, align 8
  %34 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %35 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %34, i32 0, i32 0
  store i32* @spufs_context_ops, i32** %35, align 8
  store i32 0, i32* %2, align 4
  br label %42

36:                                               ; preds = %18
  %37 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %4, align 8
  %38 = call i32 @kfree(%struct.spufs_fs_context* %37)
  br label %39

39:                                               ; preds = %36, %11
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %19
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @current_gid(...) #1

declare dso_local i32 @kfree(%struct.spufs_fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
