; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__filesystem_gunk.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__filesystem_gunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"GITTEST_INVASIVE_SPEED\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s/refs/heads/foo/%d/subdir\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"testrepo/.git/refs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__filesystem_gunk() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca i32, align 4
  %4 = bitcast %struct.TYPE_7__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @cl_skip()
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* @g_repo, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %30, %9
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 100000
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = call i32 @git_buf_clear(%struct.TYPE_7__* %2)
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_repository_path(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @git_buf_printf(%struct.TYPE_7__* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %18)
  %20 = call i32 @git_buf_oom(%struct.TYPE_7__* %2)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %28 = call i32 @git_futils_mkdir(i32 %26, i32 509, i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %11

33:                                               ; preds = %11
  %34 = call i32 @git_iterator_for_filesystem(i32** %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @expect_iterator_items(i32* %36, i32 16, i32* null, i32 15, i32* null)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_iterator_free(i32* %38)
  %40 = call i32 @git_buf_dispose(%struct.TYPE_7__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_is_env_set(i8*) #2

declare dso_local i32 @cl_skip(...) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_7__*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_7__*, i8*, i32, i32) #2

declare dso_local i32 @git_repository_path(i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_buf_oom(%struct.TYPE_7__*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_futils_mkdir(i32, i32, i32) #2

declare dso_local i32 @git_iterator_for_filesystem(i32**, i8*, i32*) #2

declare dso_local i32 @expect_iterator_items(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
