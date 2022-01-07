; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_add.c_test_submodule_add__submodule_clone.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_add.c_test_submodule_add__submodule_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"testrepo-add\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Submoduler\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"submoduler@local\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"A submodule\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_add__submodule_clone() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* @g_repo, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @git_submodule_add_setup(i32** %4, i32 %7, i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @git_submodule_clone(i32* null, i32* %11, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @git_submodule_add_finalize(i32* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_repository_index(i32** %5, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @git_index_write_tree(i32* %1, i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_signature_now(i32** %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_commit_create_from_ids(i32* %2, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %26, i32* %27, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %1, i32 0, i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = call i32 @assert_submodule_exists(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @git_signature_free(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @git_submodule_free(i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @git_index_free(i32* %36)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_add_setup(i32**, i32, i32, i8*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_submodule_clone(i32*, i32*, i32*) #1

declare dso_local i32 @git_submodule_add_finalize(i32*) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_index_write_tree(i32*, i32*) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_commit_create_from_ids(i32*, i32, i8*, i32*, i32*, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @assert_submodule_exists(i32, i8*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
