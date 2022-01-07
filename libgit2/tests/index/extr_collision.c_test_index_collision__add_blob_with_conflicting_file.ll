; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_collision.c_test_index_collision__add_blob_with_conflicting_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_collision.c_test_index_collision__add_blob_with_conflicting_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@g_empty_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"a/b\00", align 1
@g_index = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"a/b/c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_collision__add_blob_with_conflicting_file() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = call i32 @memset(%struct.TYPE_8__* %1, i32 0, i32 40)
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 12346789, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 12346789, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 33188, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %13 = call i32 @git_oid_cpy(i32* %12, i32* @g_empty_id)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* @g_index, align 4
  %16 = call i32 @git_index_add(i32 %15, %struct.TYPE_8__* %1)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_index, align 4
  %19 = call i32 @git_index_write_tree(i32* %3, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_tree_lookup(i32** %4, i32 %21, i32* %3)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @git_tree_entry_bypath(i32** %2, i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_tree_entry_free(i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @git_tree_free(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @g_index, align 4
  %33 = call i32 @git_index_add(i32 %32, %struct.TYPE_8__* %1)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @g_index, align 4
  %36 = call i32 @git_index_write_tree(i32* %3, i32 %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* @g_repo, align 4
  %39 = call i32 @git_tree_lookup(i32** %4, i32 %38, i32* %3)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @git_tree_entry_bypath(i32** %2, i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_tree_entry_free(i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_tree_free(i32* %46)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_add(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @git_index_write_tree(i32*, i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_tree_entry_bypath(i32**, i32*, i8*) #1

declare dso_local i32 @git_tree_entry_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
