; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__two_levels.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__two_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i8*, i32, i32 }

@g_repo = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"a8233120f6ad708f843d861ce2b7228ec4e3dec6\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"top-level.txt\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"subdir/file.txt\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"3697d64be941a53d4ae8f6a271e4e3fa56b022cc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_cache__two_levels() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_index(%struct.TYPE_19__** %3, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = call i32 @git_index_clear(%struct.TYPE_19__* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @memset(%struct.TYPE_18__* %4, i32 0, i32 16)
  %13 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %16 = call i32 @git_oid_fromstr(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = call i32 @git_index_add(%struct.TYPE_19__* %19, %struct.TYPE_18__* %4)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = call i32 @git_index_add(%struct.TYPE_19__* %23, %struct.TYPE_18__* %4)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = call i32 @git_index_write_tree(i32* %2, %struct.TYPE_19__* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = call i32 @git_tree_lookup(i32** %1, i32 %29, i32* %2)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_index_read_tree(%struct.TYPE_19__* %32, i32* %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_tree_free(i32* %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = call i32 @git_index_write(%struct.TYPE_19__* %38)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = call i32 @cl_assert(%struct.TYPE_17__* %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = call %struct.TYPE_17__* @git_tree_cache_get(%struct.TYPE_17__* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 @cl_assert(%struct.TYPE_17__* %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = call i32 @git_index_read(%struct.TYPE_19__* %50, i32 1)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = call i32 @cl_assert(%struct.TYPE_17__* %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = call %struct.TYPE_17__* @git_tree_cache_get(%struct.TYPE_17__* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @cl_assert(%struct.TYPE_17__* %60)
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %64 = call i32 @git_oid_fromstr(i32* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = call i32 @git_index_add(%struct.TYPE_19__* %66, %struct.TYPE_18__* %4)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = call i32 @git_index_write(%struct.TYPE_19__* %69)
  %71 = call i32 @cl_git_pass(i32 %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %73 = call i32 @git_index_read(%struct.TYPE_19__* %72, i32 1)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = call i32 @cl_assert(%struct.TYPE_17__* %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cl_assert_equal_i(i32 -1, i32 %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cl_assert_equal_i(i32 1, i32 %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = call %struct.TYPE_17__* @git_tree_cache_get(%struct.TYPE_17__* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_17__* %94, %struct.TYPE_17__** %5, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = call i32 @cl_assert(%struct.TYPE_17__* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cl_assert_equal_i(i32 1, i32 %99)
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = call i32 @git_index_free(%struct.TYPE_19__* %101)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(%struct.TYPE_19__**, i32) #1

declare dso_local i32 @git_index_clear(%struct.TYPE_19__*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_index_add(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @git_index_write_tree(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_index_read_tree(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_index_write(%struct.TYPE_19__*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @git_tree_cache_get(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @git_index_read(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
