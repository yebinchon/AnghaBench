; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_notify.c_test_notify.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_notify.c_test_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8**, i32 }
%struct.TYPE_10__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@assert_called_notifications = common dso_local global i32 0, align 4
@diff_file_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32*, i32)* @test_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_notify(i8** %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 40, i1 false)
  store i32* null, i32** %10, align 8
  %13 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* @g_repo, align 4
  %14 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %15 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @assert_called_notifications, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i8** %22, i8*** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32* %28, i32** %29, align 8
  %30 = call i32 @memset(%struct.TYPE_10__* %11, i32 0, i32 4)
  %31 = load i32, i32* @g_repo, align 4
  %32 = call i32 @git_diff_index_to_workdir(i32** %10, i32 %31, i32* null, %struct.TYPE_9__* %9)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @diff_file_cb, align 4
  %36 = call i32 @git_diff_foreach(i32* %34, i32 %35, i32* null, i32* null, i32* null, %struct.TYPE_10__* %11)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_i(i32 %38, i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @git_diff_free(i32* %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
