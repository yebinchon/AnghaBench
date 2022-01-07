; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_alternates.c_test_odb_alternates__chained.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_alternates.c_test_odb_alternates__chained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@paths = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_alternates__chained() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @paths, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @init_linked_repo(i32 %5, i32 %6)
  %8 = load i32*, i32** @paths, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @paths, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @init_linked_repo(i32 %10, i32 %13)
  %15 = load i32*, i32** @paths, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @git_repository_open(i32* @repo, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @repo, align 4
  %22 = call i32 @git_commit_lookup(i32** %1, i32 %21, i32* %2)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_commit_free(i32* %24)
  %26 = load i32, i32* @repo, align 4
  %27 = call i32 @git_repository_free(i32 %26)
  ret void
}

declare dso_local i32 @init_linked_repo(i32, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_repository_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
