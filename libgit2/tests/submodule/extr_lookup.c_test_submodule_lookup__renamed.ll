; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__renamed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_test_submodule_lookup__renamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"sm_actually_changed\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"submod2/sm_unchanged\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"submod2/sm_actually_changed\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"submod2/.gitmodules\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"submodule.sm_unchanged.path\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"submod2/.git/modules/sm_unchanged/config\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"../../../sm_actually_changed\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1
@GIT_FILEMODE_COMMIT = common dso_local global i32 0, align 4
@sm_lookup_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_lookup__renamed() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_repository_index__weakptr(i32** %2, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @p_rename(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_config_open_ondisk(i32** %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @git_config_set_string(i32* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @git_config_free(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_index_add_bypath(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @git_config_open_ondisk(i32** %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @git_config_set_string(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @git_config_free(i32* %29)
  %31 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 24, i1 false)
  %32 = load i32*, i32** %2, align 8
  %33 = call %struct.TYPE_11__* @git_index_get_bypath(i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 0)
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %6, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = call i32 @cl_assert(%struct.TYPE_11__* %34)
  %36 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cl_assert_equal_i(i32 %36, i32 %39)
  %41 = load i8*, i8** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = call i32 @git_oid_cpy(i32* %45, i32* %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @git_index_remove(i32* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @git_index_add(i32* %52, %struct.TYPE_11__* %7)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @git_index_write(i32* %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = call i32 @memset(%struct.TYPE_10__* %3, i32 0, i32 4)
  %59 = load i32, i32* @g_repo, align 4
  %60 = load i32, i32* @sm_lookup_cb, align 4
  %61 = call i32 @git_submodule_foreach(i32 %59, i32 %60, %struct.TYPE_10__* %3)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cl_assert_equal_i(i32 8, i32 %64)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #1

declare dso_local i32 @p_rename(i8*, i8*) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_11__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_11__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_index_remove(i32*, i8*, i32) #1

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @git_submodule_foreach(i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
