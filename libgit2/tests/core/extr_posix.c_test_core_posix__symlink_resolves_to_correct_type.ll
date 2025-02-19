; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_posix.c_test_core_posix__symlink_resolves_to_correct_type.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_posix.c_test_core_posix__symlink_resolves_to_correct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dir/file\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"symlink target\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dir/link\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_posix__symlink_resolves_to_correct_type() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %3 = call i32 (...) @clar_sandbox_path()
  %4 = call i32 @git_path_supports_symlinks(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 (...) @clar__skip()
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 511, i32 0)
  %10 = call i32 @cl_must_pass(i32 %9)
  %11 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 511, i32 0)
  %12 = call i32 @cl_must_pass(i32 %11)
  %13 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @p_symlink(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_futils_readbuffer(%struct.TYPE_5__* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cl_assert_equal_s(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @p_unlink(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @cl_must_pass(i32 %21)
  %23 = call i32 @p_unlink(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @cl_must_pass(i32 %23)
  %25 = call i32 @p_rmdir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @cl_must_pass(i32 %25)
  %27 = call i32 @p_rmdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @cl_must_pass(i32 %27)
  %29 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_path_supports_symlinks(i32) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @clar__skip(...) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @p_symlink(i8*, i8*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @p_rmdir(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
