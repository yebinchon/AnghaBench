; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status_entry = type { i32, i8*, i8* }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_STATUS_INDEX_RENAMED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"newname-workdir.txt\00", align 1
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"newname-index.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_renames__both_one() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca [1 x %struct.status_entry], align 16
  %5 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = getelementptr inbounds [1 x %struct.status_entry], [1 x %struct.status_entry]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i32 0, i32 0
  %8 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %9 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 8
  %11 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @g_repo, align 4
  %26 = call i32 @git_repository_index(i32** %1, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = call i32 @rename_file(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_index_remove_bypath(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_index_add_bypath(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_index_write(i32* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = call i32 @rename_file(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @g_repo, align 4
  %42 = call i32 @git_status_list_new(i32** %2, i32 %41, %struct.TYPE_4__* %3)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds [1 x %struct.status_entry], [1 x %struct.status_entry]* %4, i64 0, i64 0
  %46 = call i32 @check_status(i32* %44, %struct.status_entry* %45, i32 1)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @git_status_list_free(i32* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @git_index_free(i32* %49)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @rename_file(i32, i8*, i8*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

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
