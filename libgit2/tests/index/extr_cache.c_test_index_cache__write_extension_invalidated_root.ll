; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__write_extension_invalidated_root.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_cache.c_test_index_cache__write_extension_invalidated_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"45dd856fdd4d89b884c340ba0e047752d9b085d6\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"index-tree-invalidated\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"some-new-file.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_cache__write_extension_invalidated_root() #0 {
  %1 = alloca %struct.TYPE_15__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @git_index_open(%struct.TYPE_15__** %1, i8* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_16__*
  %17 = call i32 @cl_assert(%struct.TYPE_16__* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @git_oid_fromstr(i32* %3, i8* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_tree_lookup(i32** %2, i32 %21, i32* %3)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_index_read_tree(%struct.TYPE_15__* %24, i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_tree_free(i32* %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = call i32 @cl_assert(%struct.TYPE_16__* %32)
  %34 = call i32 @memset(%struct.TYPE_14__* %6, i32 0, i32 16)
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %37 = call %struct.TYPE_17__* @git_index_get_byindex(%struct.TYPE_15__* %36, i32 0)
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = call i32 @git_oid_cpy(i32* %35, i32* %38)
  %40 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %44 = call i32 @git_index_add(%struct.TYPE_15__* %43, %struct.TYPE_14__* %6)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @cl_assert_equal_i(i32 -1, i32 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %53 = call i32 @git_index_write(%struct.TYPE_15__* %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %56 = call i32 @git_index_free(%struct.TYPE_15__* %55)
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @git_index_open(%struct.TYPE_15__** %1, i8* %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = call i32 @cl_assert(%struct.TYPE_16__* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cl_assert_equal_i(i32 -1, i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cl_assert_equal_i(i32 0, i32 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = call %struct.TYPE_16__* @git_oid_cmp(i32* %3, i32* %79)
  %81 = call i32 @cl_assert(%struct.TYPE_16__* %80)
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @p_unlink(i8* %82)
  %84 = call i32 @cl_git_pass(i32 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %1, align 8
  %86 = call i32 @git_index_free(%struct.TYPE_15__* %85)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_open(%struct.TYPE_15__**, i8*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_16__*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_index_read_tree(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @git_index_get_byindex(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @git_index_add(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_write(%struct.TYPE_15__*) #1

declare dso_local i32 @git_index_free(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
