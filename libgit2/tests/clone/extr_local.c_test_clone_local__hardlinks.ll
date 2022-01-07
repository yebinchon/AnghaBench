; ModuleID = '/home/carl/AnghaBench/libgit2/tests/clone/extr_local.c_test_clone_local__hardlinks.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/clone/extr_local.c_test_clone_local__hardlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.stat = type { i32 }

@GIT_CLONE_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_CLONE_LOCAL_NO_LINKS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"./clone.git\00", align 1
@GIT_CLONE_LOCAL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"clone.git\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"./clone2.git\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"08\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"b041783f40edfe12bb406c9c9a8a040177c125\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"./clone3.git\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"./clone4.git\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_clone_local__hardlinks() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.stat, align 4
  %5 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_CLONE_OPTIONS_INIT to i8*), i64 16, i1 false)
  %6 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load i8*, i8** @GIT_CLONE_LOCAL_NO_LINKS, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i8* %8, i8** %9, align 8
  %10 = call i8* @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @git_clone(i32** %1, i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %2)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_repository_free(i32* %13)
  %15 = load i8*, i8** @GIT_CLONE_LOCAL, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = call i8* @cl_git_path_url(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @git_clone(i32** %1, i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %2)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @git_buf_clear(%struct.TYPE_10__* %3)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_repository_path(i32* %21)
  %23 = call i32 @git_buf_join_n(%struct.TYPE_10__* %3, i8 signext 47, i32 4, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @p_stat(i32 %26, %struct.stat* %4)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_i(i32 2, i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_repository_free(i32* %32)
  %34 = call i32 @git_buf_clear(%struct.TYPE_10__* %3)
  %35 = load i8*, i8** @GIT_CLONE_LOCAL_NO_LINKS, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = call i8* @cl_git_path_url(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @git_clone(i32** %1, i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_9__* %2)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = call i32 @git_buf_clear(%struct.TYPE_10__* %3)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_repository_path(i32* %41)
  %43 = call i32 @git_buf_join_n(%struct.TYPE_10__* %3, i8 signext 47, i32 4, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @p_stat(i32 %46, %struct.stat* %4)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_i(i32 1, i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_repository_free(i32* %52)
  %54 = call i32 @git_clone(i32** %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_9__* null)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = call i32 @git_buf_clear(%struct.TYPE_10__* %3)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_repository_path(i32* %57)
  %59 = call i32 @git_buf_join_n(%struct.TYPE_10__* %3, i8 signext 47, i32 4, i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @p_stat(i32 %62, %struct.stat* %4)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cl_assert_equal_i(i32 3, i32 %66)
  %68 = call i32 @git_buf_dispose(%struct.TYPE_10__* %3)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @git_repository_free(i32* %69)
  %71 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %72 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %71)
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %75 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %74)
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %78 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %77)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %81 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 %80)
  %82 = call i32 @cl_git_pass(i32 %81)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_clone(i32**, i8*, i8*, %struct.TYPE_9__*) #2

declare dso_local i8* @cl_fixture(i8*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i8* @cl_git_path_url(i8*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_10__*) #2

declare dso_local i32 @git_buf_join_n(%struct.TYPE_10__*, i8 signext, i32, i32, i8*, i8*, i8*) #2

declare dso_local i32 @git_repository_path(i32*) #2

declare dso_local i32 @p_stat(i32, %struct.stat*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
