; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__keeps_parent_symlinks.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__keeps_parent_symlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cleanup_basic_dirs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"d0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"d1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"d1/foo/bar\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@GIT_MKDIR_REMOVE_SYMLINKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"d0/foo/bar\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"d2\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"d2/other/dir\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"d0/other/dir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_mkdir__keeps_parent_symlinks() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %3 = load i32, i32* @cleanup_basic_dirs, align 4
  %4 = call i32 @cl_set_cleanup(i32 %3, i32* null)
  %5 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 493, i32 0)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_assert(i32 %12)
  %14 = call i32 @symlink(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_must_pass(i32 %14)
  %16 = call i32 @git_path_islink(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_assert(i32 %16)
  %18 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %19 = load i32, i32* @GIT_MKDIR_REMOVE_SYMLINKS, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 493, i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_path_islink(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @cl_assert(i32 %23)
  %25 = call i32 @git_path_isdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @cl_assert(i32 %25)
  %27 = call i32 @git_path_isdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @cl_assert(i32 %27)
  %29 = call i32 @symlink(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %30 = call i32 @cl_must_pass(i32 %29)
  %31 = call i32 @git_path_islink(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @cl_assert(i32 %31)
  %33 = call i32 (...) @clar_sandbox_path()
  %34 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %38 = load i32, i32* @GIT_MKDIR_REMOVE_SYMLINKS, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @git_futils_mkdir(i8* %36, i32 493, i32 %39)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = call i32 @git_path_islink(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @cl_assert(i32 %42)
  %44 = call i32 @git_path_isdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %45 = call i32 @cl_assert(i32 %44)
  %46 = call i32 @git_path_isdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %47 = call i32 @cl_assert(i32 %46)
  %48 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_set_cleanup(i32, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @symlink(i8*, i8*) #2

declare dso_local i32 @git_path_islink(i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
