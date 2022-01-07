; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__update_stat_cache_0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__update_stat_cache_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GIT_DIFF_PERFDATA_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_UPDATE_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__update_stat_cache_0() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32*, align 8
  %6 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_DIFF_PERFDATA_INIT to i8*), i64 8, i1 false)
  %9 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_status_list_new(i32** %3, i32* %11, %struct.TYPE_7__* %2)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @check_status0(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_status_list_get_perfdata(%struct.TYPE_8__* %4, i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_sz(i32 16, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_assert_equal_sz(i32 5, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_status_list_free(i32* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_repository_index__weakptr(i32** %5, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @tick_index(i32* %30)
  %32 = load i32, i32* @GIT_STATUS_OPT_UPDATE_INDEX, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_status_list_new(i32** %3, i32* %36, %struct.TYPE_7__* %2)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @check_status0(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @git_status_list_get_perfdata(%struct.TYPE_8__* %4, i32* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cl_assert_equal_sz(i32 16, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_sz(i32 5, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @git_status_list_free(i32* %50)
  %52 = load i32, i32* @GIT_STATUS_OPT_UPDATE_INDEX, align 4
  %53 = xor i32 %52, -1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @tick_index(i32* %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @git_status_list_new(i32** %3, i32* %59, %struct.TYPE_7__* %2)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @check_status0(i32* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @git_status_list_get_perfdata(%struct.TYPE_8__* %4, i32* %64)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cl_assert_equal_sz(i32 16, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cl_assert_equal_sz(i32 0, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @git_status_list_free(i32* %73)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_status_list_new(i32**, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @check_status0(i32*) #1

declare dso_local i32 @git_status_list_get_perfdata(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_status_list_free(i32*) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32*) #1

declare dso_local i32 @tick_index(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
