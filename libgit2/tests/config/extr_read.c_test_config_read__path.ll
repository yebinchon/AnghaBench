; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__path.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"fakehome\00", align 1
@GIT_OPT_GET_SEARCH_PATH = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_OPT_SET_SEARCH_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"./testconfig\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"[some]\0A path = ~/somefile\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"somefile\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"some.path\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"[some]\0A path = ~/\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"[some]\0A path = ~\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"[some]\0A path = ~user/foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_read__path() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_13__, align 8
  %3 = alloca %struct.TYPE_13__, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = bitcast %struct.TYPE_13__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %7 = bitcast %struct.TYPE_13__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %8 = bitcast %struct.TYPE_13__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %9 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %10 = call i32 @p_mkdir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 511)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_path_prettify(%struct.TYPE_13__* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @GIT_OPT_GET_SEARCH_PATH, align 4
  %15 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %16 = call i32 @git_libgit2_opts(i32 %14, i32 %15, %struct.TYPE_13__* %3)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %19 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = call i32 @git_libgit2_opts(i32 %18, i32 %19, %struct.TYPE_13__* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = call i32 @git_path_join_unrooted(%struct.TYPE_13__* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_13__* %26, i32* null)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_config_get_path(%struct.TYPE_13__* %2, i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = call i32 @cl_assert_equal_s(%struct.TYPE_13__* %35, %struct.TYPE_13__* %37)
  %39 = call i32 @git_buf_dispose(%struct.TYPE_13__* %2)
  %40 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = call i32 @git_path_join_unrooted(%struct.TYPE_13__* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_13__* %42, i32* null)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_config_get_path(%struct.TYPE_13__* %2, i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = call i32 @cl_assert_equal_s(%struct.TYPE_13__* %49, %struct.TYPE_13__* %51)
  %53 = call i32 @git_buf_dispose(%struct.TYPE_13__* %2)
  %54 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = call i32 @git_buf_sets(%struct.TYPE_13__* %5, %struct.TYPE_13__* %56)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @git_config_get_path(%struct.TYPE_13__* %2, i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %2, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = call i32 @cl_assert_equal_s(%struct.TYPE_13__* %63, %struct.TYPE_13__* %65)
  %67 = call i32 @git_buf_dispose(%struct.TYPE_13__* %2)
  %68 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @git_config_get_path(%struct.TYPE_13__* %2, i32* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 @cl_git_fail(i32 %70)
  %72 = load i32, i32* @GIT_OPT_SET_SEARCH_PATH, align 4
  %73 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = call i32 @git_libgit2_opts(i32 %72, i32 %73, %struct.TYPE_13__* %75)
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = call i32 @git_buf_dispose(%struct.TYPE_13__* %3)
  %79 = call i32 @git_buf_dispose(%struct.TYPE_13__* %4)
  %80 = call i32 @git_buf_dispose(%struct.TYPE_13__* %5)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @git_config_free(i32* %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_path_prettify(%struct.TYPE_13__*, i8*, i32*) #2

declare dso_local i32 @git_libgit2_opts(i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_path_join_unrooted(%struct.TYPE_13__*, i8*, %struct.TYPE_13__*, i32*) #2

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #2

declare dso_local i32 @git_config_get_path(%struct.TYPE_13__*, i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(%struct.TYPE_13__*, %struct.TYPE_13__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_13__*, %struct.TYPE_13__*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
