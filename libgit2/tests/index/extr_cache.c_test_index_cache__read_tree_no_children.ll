; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__read_tree_no_children.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__read_tree_no_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"45dd856fdd4d89b884c340ba0e047752d9b085d6\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"new.txt\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"d4bcc68acd4410bf836a39f20afb2c2ece09584e\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_cache__read_tree_no_children() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @git_index_new(%struct.TYPE_13__** %1)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = icmp eq %struct.TYPE_14__* %9, null
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_14__*
  %14 = call i32 @cl_assert(%struct.TYPE_14__* %13)
  %15 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_tree_lookup(i32** %3, i32 %17, i32* %4)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @git_index_read_tree(%struct.TYPE_13__* %20, i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_tree_free(i32* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = call i32 @cl_assert(%struct.TYPE_14__* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = call %struct.TYPE_14__* @git_oid_equal(i32* %4, i32* %33)
  %35 = call i32 @cl_assert(%struct.TYPE_14__* %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_i(i32 0, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %43 = call i32 @git_index_entrycount(%struct.TYPE_13__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_i(i32 %43, i32 %48)
  %50 = call i32 @memset(%struct.TYPE_12__* %2, i32 0, i32 16)
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %51, align 8
  %52 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %55 = call i32 @git_oid_fromstr(i32* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %57 = call i32 @git_index_add(%struct.TYPE_13__* %56, %struct.TYPE_12__* %2)
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cl_assert_equal_i(i32 -1, i32 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %66 = call i32 @git_index_free(%struct.TYPE_13__* %65)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_new(%struct.TYPE_13__**) #1

declare dso_local i32 @cl_assert(%struct.TYPE_14__*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_index_read_tree(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local %struct.TYPE_14__* @git_oid_equal(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_entrycount(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @git_index_add(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @git_index_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
