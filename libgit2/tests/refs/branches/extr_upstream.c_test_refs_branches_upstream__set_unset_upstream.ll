; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_upstream.c_test_refs_branches_upstream__set_unset_upstream.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_upstream.c_test_refs_branches_upstream__set_unset_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"refs/heads/test\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"test/master\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"branch.test.remote\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"branch.test.merge\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_upstream__set_unset_upstream() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @git_reference_lookup(i32** %1, i32* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_branch_set_upstream(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @assert_config_entry_value(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @assert_config_entry_value(i32* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_reference_free(i32* %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_reference_lookup(i32** %1, i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_branch_set_upstream(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @assert_config_entry_value(i32* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @assert_config_entry_value(i32* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_branch_set_upstream(i32* %26, i8* null)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @assert_config_entry_existence(i32* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @assert_config_entry_existence(i32* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_reference_free(i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_reference_lookup(i32** %1, i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @git_branch_set_upstream(i32* %38, i8* null)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @assert_config_entry_existence(i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @assert_config_entry_existence(i32* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_reference_free(i32* %45)
  %47 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_branch_set_upstream(i32*, i8*) #1

declare dso_local i32 @assert_config_entry_value(i32*, i8*, i8*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @assert_config_entry_existence(i32*, i8*, i32) #1

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
