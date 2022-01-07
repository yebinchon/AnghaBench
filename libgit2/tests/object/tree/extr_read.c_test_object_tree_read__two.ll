; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_read.c_test_object_tree_read__two.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_read.c_test_object_tree_read__two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree_oid = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"README\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_read__two() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @tree_oid, align 4
  %6 = call i32 @git_oid_fromstr(i32* %1, i32 %5)
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_tree_lookup(i32** %2, i32 %7, i32* %1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @git_tree_entrycount(i32* %10)
  %12 = icmp eq i32 %11, 3
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %17 = call i64 @git_object_lookup(i32** %4, i32 %15, i32* %1, i32 %16)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_object_free(i32* %25)
  store i32* null, i32** %4, align 8
  %27 = load i32, i32* @g_repo, align 4
  %28 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %29 = call i64 @git_object_lookup(i32** %4, i32 %27, i32* %1, i32 %28)
  %30 = call i32 @cl_git_fail(i64 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32* @git_tree_entry_byname(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @git_tree_entry_name(i32* %41)
  %43 = call i32 @cl_assert_equal_s(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @g_repo, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_tree_entry_to_object(i32** %4, i32 %44, i32* %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @cl_assert(i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @git_object_free(i32* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @git_tree_free(i32* %54)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_tree_entrycount(i32*) #1

declare dso_local i64 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @cl_git_fail(i64) #1

declare dso_local i32* @git_tree_entry_byname(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_tree_entry_name(i32*) #1

declare dso_local i32 @git_tree_entry_to_object(i32**, i32, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
