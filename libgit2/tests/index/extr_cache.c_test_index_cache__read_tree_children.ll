; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__read_tree_children.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__read_tree_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i8*, i32, i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"top-level\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"subdir/some-file\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"subdir/even-deeper/some-file\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"subdir2/some-file\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"subdir/even-deeper\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"subdir2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_cache__read_tree_children() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca %struct.TYPE_16__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_index(%struct.TYPE_17__** %1, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %10 = call i32 @git_index_clear(%struct.TYPE_17__* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = icmp eq %struct.TYPE_15__* %14, null
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_15__*
  %19 = call i32 @cl_assert(%struct.TYPE_15__* %18)
  %20 = call i32 @memset(%struct.TYPE_16__* %2, i32 0, i32 16)
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %25 = call i32 @git_oid_fromstr(i32* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %27 = call i32 @git_index_add(%struct.TYPE_17__* %26, %struct.TYPE_16__* %2)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %29, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %31 = call i32 @git_index_add(%struct.TYPE_17__* %30, %struct.TYPE_16__* %2)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %33, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %35 = call i32 @git_index_add(%struct.TYPE_17__* %34, %struct.TYPE_16__* %2)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %39 = call i32 @git_index_add(%struct.TYPE_17__* %38, %struct.TYPE_16__* %2)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %42 = call i32 @git_index_write_tree(i32* %5, %struct.TYPE_17__* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %45 = call i32 @git_index_clear(%struct.TYPE_17__* %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = icmp eq %struct.TYPE_15__* %49, null
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to %struct.TYPE_15__*
  %54 = call i32 @cl_assert(%struct.TYPE_15__* %53)
  %55 = load i32, i32* @g_repo, align 4
  %56 = call i32 @git_tree_lookup(i32** %3, i32 %55, i32* %5)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @git_index_read_tree(%struct.TYPE_17__* %58, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @git_tree_free(i32* %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i32 @cl_assert(%struct.TYPE_15__* %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_assert_equal_i(i32 2, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %76 = call i32 @git_oid_fromstr(i32* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %78 = call i32 @git_index_add(%struct.TYPE_17__* %77, %struct.TYPE_16__* %2)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cl_assert_equal_i(i32 -1, i32 %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = call %struct.TYPE_15__* @git_tree_cache_get(%struct.TYPE_15__* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %4, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = call i32 @cl_assert(%struct.TYPE_15__* %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @cl_assert_equal_i(i32 -1, i32 %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = call %struct.TYPE_15__* @git_tree_cache_get(%struct.TYPE_15__* %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %4, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = call i32 @cl_assert(%struct.TYPE_15__* %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @cl_assert_equal_i(i32 1, i32 %104)
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = call %struct.TYPE_15__* @git_tree_cache_get(%struct.TYPE_15__* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %4, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = call i32 @cl_assert(%struct.TYPE_15__* %110)
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @cl_assert_equal_i(i32 1, i32 %114)
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %117 = call i32 @git_index_free(%struct.TYPE_17__* %116)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(%struct.TYPE_17__**, i32) #1

declare dso_local i32 @git_index_clear(%struct.TYPE_17__*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_index_add(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @git_index_write_tree(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_index_read_tree(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local %struct.TYPE_15__* @git_tree_cache_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @git_index_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
