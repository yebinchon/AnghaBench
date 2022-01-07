; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__subtree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@first_tree = common dso_local global i32 0, align 4
@second_tree = common dso_local global i32 0, align 4
@third_tree = common dso_local global i32 0, align 4
@blob_oid = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"new.txt\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_write__subtree() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @first_tree, align 4
  %10 = call i32 @git_oid_fromstr(i32* %3, i32 %9)
  %11 = load i32, i32* @second_tree, align 4
  %12 = call i32 @git_oid_fromstr(i32* %6, i32 %11)
  %13 = load i32, i32* @third_tree, align 4
  %14 = call i32 @git_oid_fromstr(i32* %7, i32 %13)
  %15 = load i32, i32* @blob_oid, align 4
  %16 = call i32 @git_oid_fromstr(i32* %4, i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_treebuilder_new(i32** %1, i32 %17, i32* null)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %22 = call i32 @git_treebuilder_insert(i32* null, i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %4, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_treebuilder_write(i32* %5, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_treebuilder_free(i32* %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = call i32 @git_tree_lookup(i32** %2, i32 %29, i32* %3)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32, i32* @g_repo, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_treebuilder_new(i32** %1, i32 %32, i32* %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %38 = call i32 @git_treebuilder_insert(i32* null, i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32 %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_treebuilder_write(i32* %8, i32* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @git_treebuilder_free(i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @git_tree_free(i32* %45)
  %47 = call i64 @git_oid_cmp(i32* %8, i32* %7)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load i32, i32* @g_repo, align 4
  %52 = call i32 @git_tree_lookup(i32** %2, i32 %51, i32* %8)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @git_tree_entrycount(i32* %54)
  %56 = icmp eq i32 2, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @cl_assert(i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @git_tree_free(i32* %59)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_treebuilder_new(i32**, i32, i32*) #1

declare dso_local i32 @git_treebuilder_insert(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @git_treebuilder_write(i32*, i32*) #1

declare dso_local i32 @git_treebuilder_free(i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_tree_entrycount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
