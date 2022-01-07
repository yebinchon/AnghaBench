; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__can_update_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__can_update_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_DIFF_PERFDATA_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@touch_file = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_DIFF_UPDATE_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__can_update_index() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %2, align 8
  %7 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_PERFDATA_INIT to i8*), i64 8, i1 false)
  %8 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* @g_repo, align 4
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 @git_buf_sets(i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @touch_file, align 4
  %13 = call i32 @git_path_direach(i32* %5, i32 0, i32 %12, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_buf_dispose(i32* %5)
  %16 = load i32, i32* @GIT_DIFF_INCLUDE_IGNORED, align 4
  %17 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = call i32 @basic_diff_status(i32** %2, %struct.TYPE_8__* %1)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_diff_get_perfdata(%struct.TYPE_7__* %3, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cl_assert_equal_sz(i32 16, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_sz(i32 5, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_diff_free(i32* %32)
  %34 = load i32, i32* @GIT_DIFF_UPDATE_INDEX, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @g_repo, align 4
  %39 = call i32 @git_repository_index__weakptr(i32** %4, i32 %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @tick_index(i32* %41)
  %43 = call i32 @basic_diff_status(i32** %2, %struct.TYPE_8__* %1)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_diff_get_perfdata(%struct.TYPE_7__* %3, i32* %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_sz(i32 16, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_sz(i32 5, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @git_diff_free(i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @tick_index(i32* %55)
  %57 = call i32 @basic_diff_status(i32** %2, %struct.TYPE_8__* %1)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @git_diff_get_perfdata(%struct.TYPE_7__* %3, i32* %58)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_sz(i32 16, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cl_assert_equal_sz(i32 0, i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @git_diff_free(i32* %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_sets(i32*, i8*) #2

declare dso_local i32 @git_path_direach(i32*, i32, i32, i32*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

declare dso_local i32 @basic_diff_status(i32**, %struct.TYPE_8__*) #2

declare dso_local i32 @git_diff_get_perfdata(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #2

declare dso_local i32 @tick_index(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
