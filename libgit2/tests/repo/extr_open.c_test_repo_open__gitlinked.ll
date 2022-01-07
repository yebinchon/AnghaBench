; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__gitlinked.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_open.c_test_repo_open__gitlinked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"gitdir: ../empty_standard_repo/.git\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"empty_standard_repo/.git/\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"alternate/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_open__gitlinked() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  %4 = call i32 @make_gitlink_dir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 @git_repository_open(i32** %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @git_repository_path(i32* %7)
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @git_repository_path(i32* %12)
  %14 = call i64 @git__suffixcmp(i32* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i32*, i32** %2, align 8
  %18 = call i32* @git_repository_path(i32* %17)
  %19 = call i32 @cl_assert_(i32 %16, i32* %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32* @git_repository_path(i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32* @git_repository_path(i32* %22)
  %24 = call i32 @cl_assert_equal_s(i32* %21, i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32* @git_repository_workdir(i32* %25)
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32* @git_repository_workdir(i32* %30)
  %32 = call i64 @git__suffixcmp(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32*, i32** %2, align 8
  %36 = call i32* @git_repository_workdir(i32* %35)
  %37 = call i32 @cl_assert_(i32 %34, i32* %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_repository_free(i32* %38)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @make_gitlink_dir(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_repository_path(i32*) #1

declare dso_local i32 @cl_assert_(i32, i32*) #1

declare dso_local i64 @git__suffixcmp(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i32*, i32*) #1

declare dso_local i32* @git_repository_workdir(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
