; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_notify.c_test_diff_notify__notify_cb_can_be_used_as_filtering_function.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_notify.c_test_diff_notify__notify_cb_can_be_used_as_filtering_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8**, i32 }
%struct.TYPE_10__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@filter_all = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"*_deleted\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_notify__notify_cb_can_be_used_as_filtering_function() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 32, i1 false)
  store i32* null, i32** %2, align 8
  store i8* null, i8** %3, align 8
  %6 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* @g_repo, align 4
  %7 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %8 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %9
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* @filter_all, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i8** %3, i8*** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 1, i32* %18, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %19 = call i32 @memset(%struct.TYPE_10__* %4, i32 0, i32 4)
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %20, i32* null, %struct.TYPE_9__* %1)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @diff_file_cb, align 4
  %25 = call i32 @git_diff_foreach(i32* %23, i32 %24, i32* null, i32* null, i32* null, %struct.TYPE_10__* %4)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_i(i32 0, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_diff_free(i32* %30)
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
