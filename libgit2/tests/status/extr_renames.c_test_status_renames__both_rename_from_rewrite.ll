; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_rename_from_rewrite.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_rename_from_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status_entry = type { i32, i8*, i8* }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_STATUS_INDEX_RENAMED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"songof7cities.txt\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"sixserving.txt\00", align 1
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_FROM_REWRITES = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"_temp_.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_renames__both_rename_from_rewrite() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca [3 x %struct.status_entry], align 16
  %5 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = getelementptr inbounds [3 x %struct.status_entry], [3 x %struct.status_entry]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i32 0, i32 0
  %8 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %9 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 8
  %11 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i64 1
  %14 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %13, i32 0, i32 0
  %15 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %16 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %13, i64 1
  %21 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %20, i32 0, i32 0
  %22 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %23 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @GIT_STATUS_OPT_RENAMES_FROM_REWRITES, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @g_repo, align 4
  %44 = call i32 @git_repository_index(i32** %1, i32 %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @g_repo, align 4
  %47 = call i32 @rename_file(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @g_repo, align 4
  %49 = call i32 @rename_file(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @g_repo, align 4
  %51 = call i32 @rename_file(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @g_repo, align 4
  %53 = call i32 @rename_file(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_index_add_bypath(i32* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_index_add_bypath(i32* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @git_index_add_bypath(i32* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @git_index_write(i32* %63)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load i32, i32* @g_repo, align 4
  %67 = call i32 @rename_file(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @g_repo, align 4
  %69 = call i32 @rename_file(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @g_repo, align 4
  %71 = call i32 @rename_file(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @g_repo, align 4
  %73 = call i32 @rename_file(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @g_repo, align 4
  %75 = call i32 @git_status_list_new(i32** %2, i32 %74, %struct.TYPE_4__* %3)
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32*, i32** %2, align 8
  %78 = getelementptr inbounds [3 x %struct.status_entry], [3 x %struct.status_entry]* %4, i64 0, i64 0
  %79 = call i32 @check_status(i32* %77, %struct.status_entry* %78, i32 3)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @git_status_list_free(i32* %80)
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @git_index_free(i32* %82)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @rename_file(i32, i8*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_status_list_new(i32**, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @check_status(i32*, %struct.status_entry*, i32) #2

declare dso_local i32 @git_status_list_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
