; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__remove_all_entries.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__remove_all_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"subdir/subdir2/README\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"subdir/subdir2/new.txt\00", align 1
@GIT_TREE_UPDATE_REMOVE = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"c4dc1555e4d4fa0e0c9c3fc46734c7c35b3ce90b\00", align 1
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_update__remove_all_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x %struct.TYPE_7__], align 16
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %9 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* @GIT_TREE_UPDATE_REMOVE, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i64 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* @GIT_TREE_UPDATE_REMOVE, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %33 = load i8*, i8** %7, align 8
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %32, align 8
  %35 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32, i32* @g_repo, align 4
  %38 = call i32 @git_tree_lookup(i32** %4, i32 %37, i32* %3)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = call i32 @git_index_new(i32** %5)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @git_index_read_tree(i32* %42, i32* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @git_index_remove(i32* %46, i8* %47, i32 0)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @git_index_remove(i32* %50, i8* %51, i32 0)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @g_repo, align 4
  %56 = call i32 @git_index_write_tree_to(i32* %1, i32* %54, i32 %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @git_index_free(i32* %58)
  %60 = load i32, i32* @g_repo, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %8, i64 0, i64 0
  %63 = call i32 @git_tree_create_updated(i32* %2, i32 %60, i32* %61, i32 2, %struct.TYPE_7__* %62)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @git_tree_free(i32* %66)
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
