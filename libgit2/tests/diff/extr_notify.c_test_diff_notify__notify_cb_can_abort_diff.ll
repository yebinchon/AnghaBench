; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_notify.c_test_diff_notify__notify_cb_can_abort_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_notify.c_test_diff_notify__notify_cb_can_abort_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8**, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@abort_diff = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"file_deleted\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"staged_changes_modified_file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_notify__notify_cb_can_abort_diff() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 32, i1 false)
  store i32* null, i32** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %7 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %8 = or i32 %6, %7
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %8
  store i32 %11, i32* %9, align 8
  %12 = load i32, i32* @abort_diff, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i8** %3, i8*** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %18, i32* null, %struct.TYPE_6__* %1)
  %20 = call i32 @cl_git_fail_with(i32 %19, i32 -42)
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %21, i32* null, %struct.TYPE_6__* %1)
  %23 = call i32 @cl_git_fail_with(i32 %22, i32 -42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
