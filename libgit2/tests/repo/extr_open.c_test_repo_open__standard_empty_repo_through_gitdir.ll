; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__standard_empty_repo_through_gitdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__standard_empty_repo_through_gitdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"empty_standard_repo/.gitted\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_open__standard_empty_repo_through_gitdir() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @cl_fixture(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @git_repository_open(i32** %1, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32* @git_repository_path(i32* %5)
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32* @git_repository_path(i32* %10)
  %12 = call i64 @git__suffixcmp(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32* @git_repository_workdir(i32* %16)
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32* @git_repository_workdir(i32* %21)
  %23 = call i64 @git__suffixcmp(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_repository_free(i32* %27)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_repository_path(i32*) #1

declare dso_local i64 @git__suffixcmp(i32*, i8*) #1

declare dso_local i32* @git_repository_workdir(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
