; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__symlink_follow_absolute_paths.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__symlink_follow_absolute_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"linkdir/link\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"linkdir/target\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"linkdir\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"libgit2 rocks\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"linkdir/target.lock\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_filebuf__symlink_follow_absolute_paths() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %4, i32* %1, align 4
  %5 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = call i32 (...) @clar_sandbox_path()
  %8 = call i32 @git_path_supports_symlinks(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 (...) @cl_skip()
  br label %12

12:                                               ; preds = %10, %0
  %13 = call i32 (...) @clar_sandbox_path()
  %14 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %2, i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 (...) @clar_sandbox_path()
  %17 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %3, i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @p_mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @p_symlink(i32 %22, i32 %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @git_filebuf_open(i32* %1, i32 %28, i32 0, i32 438)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_filebuf_printf(i32* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = call i32 @git_path_exists(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %34 = call i32 @cl_assert_equal_i(i32 1, i32 %33)
  %35 = call i32 @git_filebuf_commit(i32* %1)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 @git_path_exists(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @cl_assert_equal_i(i32 1, i32 %37)
  %39 = call i32 @git_filebuf_cleanup(i32* %1)
  %40 = call i32 @git_buf_dispose(%struct.TYPE_5__* %2)
  %41 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  %42 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %43 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_path_supports_symlinks(i32) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @cl_skip(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @p_symlink(i32, i32) #2

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #2

declare dso_local i32 @git_filebuf_printf(i32*, i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_path_exists(i8*) #2

declare dso_local i32 @git_filebuf_commit(i32*) #2

declare dso_local i32 @git_filebuf_cleanup(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
