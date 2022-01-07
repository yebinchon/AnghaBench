; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_casechange_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_casechange_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status_entry = type { i32, i8*, i8* }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_STATUS_INDEX_RENAMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"IKeepSix.txt\00", align 1
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"IKEEPSIX.txt\00", align 1
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_renames__both_casechange_one() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.status_entry], align 16
  %6 = alloca [1 x %struct.status_entry], align 16
  %7 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = getelementptr inbounds [1 x %struct.status_entry], [1 x %struct.status_entry]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %8, i32 0, i32 0
  %10 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds [1 x %struct.status_entry], [1 x %struct.status_entry]* %6, i64 0, i64 0
  %14 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %13, i32 0, i32 0
  %15 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %16 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @g_repo, align 4
  %33 = call i32 @git_repository_index(i32** %1, i32 %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_index_caps(i32* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @g_repo, align 4
  %38 = call i32 @rename_file(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_index_remove_bypath(i32* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @git_index_add_bypath(i32* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_index_write(i32* %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* @g_repo, align 4
  %49 = call i32 @rename_file(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @g_repo, align 4
  %51 = call i32 @git_status_list_new(i32** %2, i32 %50, %struct.TYPE_4__* %3)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %0
  %59 = getelementptr inbounds [1 x %struct.status_entry], [1 x %struct.status_entry]* %5, i64 0, i64 0
  br label %62

60:                                               ; preds = %0
  %61 = getelementptr inbounds [1 x %struct.status_entry], [1 x %struct.status_entry]* %6, i64 0, i64 0
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi %struct.status_entry* [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @check_status(i32* %53, %struct.status_entry* %63, i32 1)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @git_status_list_free(i32* %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @git_index_free(i32* %67)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_caps(i32*) #2

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
