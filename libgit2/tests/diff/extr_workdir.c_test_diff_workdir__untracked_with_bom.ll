; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__untracked_with_bom.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__untracked_with_bom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"empty_standard_repo/bom.txt\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\FF\FE1\002\003\004\00\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_SHOW_UNTRACKED_CONTENT = common dso_local global i32 0, align 4
@GIT_DELTA_UNTRACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__untracked_with_bom() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %2, align 8
  %5 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* @g_repo, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @cl_repo_set_bool(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %8 = load i32, i32* @O_WRONLY, align 4
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @cl_git_write2file(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10, i32 %10, i32 436)
  %12 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %13 = load i32, i32* @GIT_DIFF_SHOW_UNTRACKED_CONTENT, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %16, i32* null, %struct.TYPE_6__* %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_diff_num_deltas(i32* %19)
  %21 = call i32 @cl_assert_equal_i(i32 1, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call %struct.TYPE_7__* @git_diff_get_delta(i32* %22, i32 0)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %3, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32, i32* @GIT_DELTA_UNTRACKED, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_i(i32 %27, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_diff_free(i32* %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #2

declare dso_local i32 @cl_git_write2file(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local %struct.TYPE_7__* @git_diff_get_delta(i32*, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
