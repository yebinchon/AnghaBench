; ModuleID = '/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__fetch_into_repo_with_symrefs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_test_fetchhead_nonetwork__fetch_into_repo_with_symrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/symref\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fetchhead_nonetwork__fetch_into_repo_with_symrefs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @git_reference_symbolic_create(i32** %3, i32* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @git_remote_set_url(i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_remote_lookup(i32** %2, i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_remote_fetch(i32* %15, i32* null, i32* null, i32* null)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_remote_free(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_reference_free(i32* %20)
  %22 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_symbolic_create(i32**, i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @git_remote_set_url(i32*, i8*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_remote_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_remote_fetch(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
