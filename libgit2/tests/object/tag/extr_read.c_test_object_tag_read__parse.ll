; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_read.c_test_object_tag_read__parse.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_read.c_test_object_tag_read__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tag1_id = common dso_local global i32 0, align 4
@tag2_id = common dso_local global i32 0, align 4
@tagged_commit = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@GIT_OBJECT_TAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_read__parse() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @tag1_id, align 4
  %8 = call i32 @git_oid_fromstr(i32* %4, i32 %7)
  %9 = load i32, i32* @tag2_id, align 4
  %10 = call i32 @git_oid_fromstr(i32* %5, i32 %9)
  %11 = load i32, i32* @tagged_commit, align 4
  %12 = call i32 @git_oid_fromstr(i32* %6, i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_tag_lookup(i32** %1, i32 %13, i32* %4)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_tag_name(i32* %16)
  %18 = call i32 @cl_assert_equal_s(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @git_tag_target_type(i32* %19)
  %21 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_tag_target(i32** %2, i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_tag_id(i32* %32)
  %34 = call i64 @git_oid_cmp(i32* %5, i32 %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @cl_assert(i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_tag_target(i32** %3, i32* %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_commit_id(i32* %45)
  %47 = call i64 @git_oid_cmp(i32* %6, i32 %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_tag_free(i32* %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @git_tag_free(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @git_commit_free(i32* %55)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tag_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_tag_name(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_tag_target_type(i32*) #1

declare dso_local i32 @git_tag_target(i32**, i32*) #1

declare dso_local i64 @git_oid_cmp(i32*, i32) #1

declare dso_local i32 @git_tag_id(i32*) #1

declare dso_local i32 @git_commit_id(i32*) #1

declare dso_local i32 @git_tag_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
