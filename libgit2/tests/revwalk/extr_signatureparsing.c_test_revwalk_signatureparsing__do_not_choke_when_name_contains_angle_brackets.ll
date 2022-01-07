; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_signatureparsing.c_test_revwalk_signatureparsing__do_not_choke_when_name_contains_angle_brackets.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_signatureparsing.c_test_revwalk_signatureparsing__do_not_choke_when_name_contains_angle_brackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"refs/heads/haacked\00", align 1
@_walk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"foo@example.com\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Yu V. Bin Haacked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_signatureparsing__do_not_choke_when_name_contains_angle_brackets() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = load i32, i32* @_repo, align 4
  %6 = call i32 @git_reference_lookup(i32** %1, i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @_walk, align 4
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_reference_target(i32* %9)
  %11 = call i32 @git_revwalk_push(i32 %8, i32 %10)
  %12 = load i32, i32* @_walk, align 4
  %13 = call i32 @git_revwalk_next(i32* %2, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @_repo, align 4
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_reference_target(i32* %16)
  %18 = call i32 @git_commit_lookup(i32** %3, i32 %15, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.TYPE_5__* @git_commit_committer(i32* %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @cl_assert_equal_i(i32 1323847743, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cl_assert_equal_i(i32 60, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @git_commit_free(i32* %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_reference_free(i32* %43)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_revwalk_push(i32, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_revwalk_next(i32*, i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32) #1

declare dso_local %struct.TYPE_5__* @git_commit_committer(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
