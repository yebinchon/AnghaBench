; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__reflog_of_a_ref_under_refs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__reflog_of_a_ref_under_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"refs/fakestash\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"refs/fakestash@{0}\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fakestash\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"fakestash@{0}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_revparse__reflog_of_a_ref_under_refs() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = call i32 @test_object_inrepo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* null, i32* %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @create_fake_stash_reference_and_reflog(i32* %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @test_object_inrepo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @test_object_inrepo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @test_object_inrepo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @test_object_inrepo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %15 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @test_object_inrepo(i8*, i8*, i32*) #1

declare dso_local i32 @create_fake_stash_reference_and_reflog(i32*) #1

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
