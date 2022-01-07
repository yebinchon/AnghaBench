; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_attributes.c_test_object_tree_attributes__normalize_attributes_when_creating_a_tree_from_an_existing_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_attributes.c_test_object_tree_attributes__normalize_attributes_when_creating_a_tree_from_an_existing_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree_oid = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"old_mode.txt\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_attributes__normalize_attributes_when_creating_a_tree_from_an_existing_one() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @tree_oid, align 4
  %7 = call i32 @git_oid_fromstr(i32* %2, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_tree_lookup(i32** %4, i32 %9, i32* %2)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @git_treebuilder_new(i32** %1, i32 %12, i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32* @git_treebuilder_get(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @git_tree_entry_filemode(i32* %23)
  %25 = call i32 @cl_assert_equal_i(i32 %22, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @git_treebuilder_write(i32* %3, i32* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_treebuilder_free(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @git_tree_free(i32* %31)
  %33 = load i32, i32* @repo, align 4
  %34 = call i32 @git_tree_lookup(i32** %4, i32 %33, i32* %3)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @git_tree_entry_byname(i32* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @git_tree_entry_filemode(i32* %43)
  %45 = call i32 @cl_assert_equal_i(i32 %42, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_tree_free(i32* %46)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_treebuilder_new(i32**, i32, i32*) #1

declare dso_local i32* @git_treebuilder_get(i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_tree_entry_filemode(i32*) #1

declare dso_local i32 @git_treebuilder_write(i32*, i32*) #1

declare dso_local i32 @git_treebuilder_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32* @git_tree_entry_byname(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
