; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_both.c_test_apply_both__index_must_match_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_both.c_test_apply_both__index_must_match_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }

@DIFF_MODIFY_TWO_FILES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"merge-recursive/asparagus.txt\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"This is a modification.\0A\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"asparagus.txt\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"06d3fefb8726ab1099acc76e02dfb85e034b2538\00", align 1
@GIT_EAPPLYFAIL = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_BOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_both__index_must_match_workdir() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i8*, align 8
  %5 = load i8*, i8** @DIFF_MODIFY_TWO_FILES, align 8
  store i8* %5, i8** %4, align 8
  %6 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @git_repository_index(i32** %2, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 24)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 33188, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %14 = call i32 @git_oid_fromstr(i32* %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_index_add(i32* %16, %struct.TYPE_4__* %3)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_index_write(i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_index_free(i32* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i32 @git_diff_from_buffer(i32** %1, i8* %24, i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @GIT_EAPPLYFAIL, align 4
  %30 = load i32, i32* @repo, align 4
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @GIT_APPLY_LOCATION_BOTH, align 4
  %33 = call i32 @git_apply(i32 %30, i32* %31, i32 %32, i32* null)
  %34 = call i32 @cl_git_fail_with(i32 %29, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_diff_free(i32* %35)
  ret void
}

declare dso_local i32 @cl_git_append2file(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_diff_from_buffer(i32**, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_apply(i32, i32*, i32, i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
