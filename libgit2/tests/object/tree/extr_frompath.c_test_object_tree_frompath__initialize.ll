; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_frompath.c_test_object_tree_frompath__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_frompath.c_test_object_tree_frompath__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"ae90f12eea699729ed24555e40b9fd669da12a12\00", align 1
@repo = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@tree = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_frompath__initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @git_repository_open(i32** @repo, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** @repo, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @git_oid_fromstr(i32* %1, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** @repo, align 8
  %14 = call i32 @git_tree_lookup(i32** @tree, i32* %13, i32* %1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** @tree, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
