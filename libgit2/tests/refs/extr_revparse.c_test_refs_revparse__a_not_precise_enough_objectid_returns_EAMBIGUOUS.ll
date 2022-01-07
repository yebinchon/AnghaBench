; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__a_not_precise_enough_objectid_returns_EAMBIGUOUS.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__a_not_precise_enough_objectid_returns_EAMBIGUOUS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"testrepo/one.txt\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"aabqhq\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"testrepo/two.txt\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"aaazvc\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"one.txt\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"two.txt\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"dea509d0\00", align 1
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"dea509d09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_revparse__a_not_precise_enough_objectid_returns_EAMBIGUOUS() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_repository_index(i32** %2, i32* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @git_index_add_bypath(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_index_add_bypath(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_revparse_single(i32** %3, i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %19 = call i32 @cl_git_fail_with(i32 %17, i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_revparse_single(i32** %3, i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_object_free(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_index_free(i32* %25)
  %27 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_revparse_single(i32**, i32*, i8*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
