; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_add.c_test_submodule_add__submodule_clone_into_nonempty_dir_succeeds.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_add.c_test_submodule_add__submodule_clone_into_nonempty_dir_succeeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"empty_standard_repo/sm\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"empty_standard_repo/sm/foobar\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"sm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_add__submodule_clone_into_nonempty_dir_succeeds() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @g_repo, align 4
  %3 = call i32 @p_mkdir(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %8 = call i32 @git_submodule_add_setup(i32** %1, i32 %6, i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_submodule_clone(i32* null, i32* %10, i32* null)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_submodule_add_finalize(i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @git_path_exists(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @cl_assert(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @assert_submodule_exists(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_submodule_free(i32* %20)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_submodule_add_setup(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_submodule_clone(i32*, i32*, i32*) #1

declare dso_local i32 @git_submodule_add_finalize(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

declare dso_local i32 @assert_submodule_exists(i32, i8*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
