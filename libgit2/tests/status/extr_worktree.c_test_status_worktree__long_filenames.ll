; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__long_filenames.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_worktree.c_test_status_worktree__long_filenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i8**, i32*, i32, i32, i32, i32 }

@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"empty_standard_repo/%s\00", align 1
@longname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"empty_standard_repo/%s/foo\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s/foo\00", align 1
@GIT_STATUS_SHOW_WORKDIR_ONLY = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_DEFAULTS = common dso_local global i32 0, align 4
@cb_status__normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_worktree__long_filenames() #0 {
  %1 = alloca [1041 x i8], align 16
  %2 = alloca [1 x i8*], align 8
  %3 = alloca [1 x i32], align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = getelementptr inbounds [1 x i8*], [1 x i8*]* %2, i64 0, i64 0
  %8 = getelementptr inbounds [1041 x i8], [1041 x i8]* %1, i64 0, i64 0
  store i8* %8, i8** %7, align 8
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %10 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %4, align 8
  %12 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 8, i1 false)
  %13 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = getelementptr inbounds [1041 x i8], [1041 x i8]* %1, i64 0, i64 0
  %15 = load i8*, i8** @longname, align 8
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = getelementptr inbounds [1041 x i8], [1041 x i8]* %1, i64 0, i64 0
  %18 = call i32 @git_futils_mkdir_r(i8* %17, i32 511)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = getelementptr inbounds [1041 x i8], [1041 x i8]* %1, i64 0, i64 0
  %21 = load i8*, i8** @longname, align 8
  %22 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = getelementptr inbounds [1041 x i8], [1041 x i8]* %1, i64 0, i64 0
  %24 = call i32 @cl_git_mkfile(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %25 = getelementptr inbounds [1041 x i8], [1041 x i8]* %1, i64 0, i64 0
  %26 = load i8*, i8** @longname, align 8
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds [1 x i8*], [1 x i8*]* %2, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i8** %29, i8*** %30, align 8
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32* %31, i32** %32, align 8
  %33 = load i32, i32* @GIT_STATUS_SHOW_WORKDIR_ONLY, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @GIT_STATUS_OPT_DEFAULTS, align 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @cb_status__normal, align 4
  %39 = call i32 @git_status_foreach_ext(i32* %37, %struct.TYPE_7__* %5, i32 %38, %struct.TYPE_6__* %6)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cl_assert_equal_i(i32 %42, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cl_assert_equal_i(i32 0, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cl_assert_equal_i(i32 0, i32 %50)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir_r(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_status_foreach_ext(i32*, %struct.TYPE_7__*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
