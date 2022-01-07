; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__extended_0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_test_repo_init__extended_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REPOSITORY_INIT_OPTIONS_INIT = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"extended\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/extended/\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"/extended/.git/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_init__extended_0() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GIT_REPOSITORY_INIT_OPTIONS_INIT, align 4
  store i32 %2, i32* %1, align 4
  %3 = call i32 @git_repository_init_ext(i32* @_repo, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %1)
  %4 = call i32 @cl_git_fail(i32 %3)
  %5 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 509, i32 0)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @git_repository_init_ext(i32* @_repo, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %1)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @_repo, align 4
  %10 = call i32 @git_repository_workdir(i32 %9)
  %11 = call i32 @git__suffixcmp(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = load i32, i32* @_repo, align 4
  %17 = call i32 @git_repository_path(i32 %16)
  %18 = call i32 @git__suffixcmp(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @cl_assert(i32 %21)
  %23 = load i32, i32* @_repo, align 4
  %24 = call i32 @git_repository_is_bare(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load i32, i32* @_repo, align 4
  %30 = call i32 @git_repository_is_empty(i32 %29)
  %31 = call i32 @cl_assert(i32 %30)
  %32 = call i32 @cleanup_repository(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_repository_init_ext(i32*, i8*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git__suffixcmp(i32, i8*) #1

declare dso_local i32 @git_repository_workdir(i32) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @git_repository_is_bare(i32) #1

declare dso_local i32 @git_repository_is_empty(i32) #1

declare dso_local i32 @cleanup_repository(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
