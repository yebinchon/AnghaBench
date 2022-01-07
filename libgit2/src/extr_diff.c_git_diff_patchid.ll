; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff.c_git_diff_patchid.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff.c_git_diff_patchid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch_id_args = type { i32, i32, i32 }

@GIT_DIFF_PATCHID_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"git_diff_patchid_options\00", align 1
@file_cb = common dso_local global i32 0, align 4
@patchid_line_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_patchid(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.patch_id_args, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @GIT_DIFF_PATCHID_OPTIONS_VERSION, align 4
  %11 = call i32 @GIT_ERROR_CHECK_VERSION(i32* %9, i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @memset(%struct.patch_id_args* %7, i32 0, i32 12)
  %13 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %7, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %7, i32 0, i32 1
  %15 = call i32 @git_hash_ctx_init(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %35

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @file_cb, align 4
  %21 = load i32, i32* @patchid_line_cb, align 4
  %22 = call i32 @git_diff_foreach(i32* %19, i32 %20, i32* null, i32* null, i32 %21, %struct.patch_id_args* %7)
  store i32 %22, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %35

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %7, i32 0, i32 2
  %27 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %7, i32 0, i32 1
  %28 = call i32 @flush_hunk(i32* %26, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %35

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %7, i32 0, i32 2
  %34 = call i32 @git_oid_cpy(i32* %32, i32* %33)
  br label %35

35:                                               ; preds = %31, %30, %24, %17
  %36 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %7, i32 0, i32 1
  %37 = call i32 @git_hash_ctx_cleanup(i32* %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(i32*, i32, i8*) #1

declare dso_local i32 @memset(%struct.patch_id_args*, i32, i32) #1

declare dso_local i32 @git_hash_ctx_init(i32*) #1

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32, %struct.patch_id_args*) #1

declare dso_local i32 @flush_hunk(i32*, i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_hash_ctx_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
