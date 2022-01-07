; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__remove_blob.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__remove_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"README\00", align 1
@GIT_TREE_UPDATE_REMOVE = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"c4dc1555e4d4fa0e0c9c3fc46734c7c35b3ce90b\00", align 1
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_update__remove_blob() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.TYPE_7__], align 16
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* @GIT_TREE_UPDATE_REMOVE, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %19 = load i8*, i8** %6, align 8
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %18, align 8
  %21 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = call i32 @git_tree_lookup(i32** %4, i32 %23, i32* %3)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_index_new(i32** %5)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @git_index_read_tree(i32* %28, i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @git_index_remove(i32* %32, i8* %33, i32 0)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @g_repo, align 4
  %38 = call i32 @git_index_write_tree_to(i32* %1, i32* %36, i32 %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @git_index_free(i32* %40)
  %42 = load i32, i32* @g_repo, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds [1 x %struct.TYPE_7__], [1 x %struct.TYPE_7__]* %7, i64 0, i64 0
  %45 = call i32 @git_tree_create_updated(i32* %2, i32 %42, i32* %43, i32 1, %struct.TYPE_7__* %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @git_tree_free(i32* %48)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_index_new(i32**) #1

declare dso_local i32 @git_index_read_tree(i32*, i32*) #1

declare dso_local i32 @git_index_remove(i32*, i8*, i32) #1

declare dso_local i32 @git_index_write_tree_to(i32*, i32*, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_tree_create_updated(i32*, i32, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
