; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_alternates.c_test_odb_alternates__long_chain.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_alternates.c_test_odb_alternates__long_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@paths = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_alternates__long_chain() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32*, i32** @paths, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @init_linked_repo(i32 %6, i32 %7)
  store i64 1, i64* %3, align 8
  br label %9

9:                                                ; preds = %26, %0
  %10 = load i64, i64* %3, align 8
  %11 = load i32*, i32** @paths, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load i32*, i32** @paths, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @paths, align 8
  %21 = load i64, i64* %3, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @init_linked_repo(i32 %19, i32 %24)
  br label %26

26:                                               ; preds = %15
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load i32*, i32** @paths, align 8
  %31 = load i32*, i32** @paths, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @git_repository_open(i32* @repo, i32 %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @repo, align 4
  %41 = call i32 @git_commit_lookup(i32** %1, i32 %40, i32* %2)
  %42 = call i32 @cl_git_fail(i32 %41)
  %43 = load i32, i32* @repo, align 4
  %44 = call i32 @git_repository_free(i32 %43)
  ret void
}

declare dso_local i32 @init_linked_repo(i32, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_repository_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
