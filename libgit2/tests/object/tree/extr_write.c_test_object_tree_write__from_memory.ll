; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__from_memory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_write.c_test_object_tree_write__from_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@first_tree = common dso_local global i32 0, align 4
@second_tree = common dso_local global i32 0, align 4
@blob_oid = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".git\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"folder/new.txt\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"new.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_write__from_memory() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @first_tree, align 4
  %8 = call i32 @git_oid_fromstr(i32* %3, i32 %7)
  %9 = load i32, i32* @second_tree, align 4
  %10 = call i32 @git_oid_fromstr(i32* %6, i32 %9)
  %11 = load i32, i32* @blob_oid, align 4
  %12 = call i32 @git_oid_fromstr(i32* %4, i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_tree_lookup(i32** %2, i32 %13, i32* %3)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_treebuilder_new(i32** %1, i32 %16, i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %22 = call i32 @git_treebuilder_insert(i32* null, i32* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %4, i32 %21)
  %23 = call i32 @cl_git_fail(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %26 = call i32 @git_treebuilder_insert(i32* null, i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32 %25)
  %27 = call i32 @cl_git_fail(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %30 = call i32 @git_treebuilder_insert(i32* null, i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %4, i32 %29)
  %31 = call i32 @cl_git_fail(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %34 = call i32 @git_treebuilder_insert(i32* null, i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %4, i32 %33)
  %35 = call i32 @cl_git_fail(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %38 = call i32 @git_treebuilder_insert(i32* null, i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %4, i32 %37)
  %39 = call i32 @cl_git_fail(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %42 = call i32 @git_treebuilder_insert(i32* null, i32* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %4, i32 %41)
  %43 = call i32 @cl_git_fail(i32 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %46 = call i32 @git_treebuilder_insert(i32* null, i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %4, i32 %45)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_treebuilder_write(i32* %5, i32* %48)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = call i64 @git_oid_cmp(i32* %5, i32* %6)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @cl_assert(i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @git_treebuilder_free(i32* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @git_tree_free(i32* %57)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_treebuilder_new(i32**, i32, i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_treebuilder_insert(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @git_treebuilder_write(i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_treebuilder_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
