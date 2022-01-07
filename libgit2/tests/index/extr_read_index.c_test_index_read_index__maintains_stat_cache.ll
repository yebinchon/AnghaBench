; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_test_index_read_index__maintains_stat_cache.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_test_index_read_index__maintains_stat_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@_index = common dso_local global i32* null, align 8
@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"0123456789012345678901234567890123456789\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_read_index__maintains_stat_cache() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = load i32*, i32** @_index, align 8
  %8 = call i64 @git_index_entrycount(i32* %7)
  %9 = call i32 @cl_assert_equal_i(i32 4, i64 %8)
  %10 = load i32*, i32** @_index, align 8
  %11 = call i32 @git_index_write_tree(i32* %2, i32* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @_repo, align 4
  %14 = call i32 @git_tree_lookup(i32** %5, i32 %13, i32* %2)
  %15 = call i32 @git_index_new(i32** %1)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @git_index_read_tree(i32* %17, i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @git_tree_free(i32* %21)
  %23 = call i32 @memset(%struct.TYPE_9__* %3, i32 0, i32 40)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 5
  %26 = call i32 @git_oid_fromstr(i32* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32 1234, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 33188, i32* %28, align 4
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @git_index_add(i32* %29, %struct.TYPE_9__* %3)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @git_index_entrycount(i32* %32)
  %34 = call i32 @cl_assert_equal_i(i32 5, i64 %33)
  %35 = load i32*, i32** @_index, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_index_read_index(i32* %35, i32* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_index_free(i32* %39)
  %41 = load i32*, i32** @_index, align 8
  %42 = call i64 @git_index_entrycount(i32* %41)
  %43 = call i32 @cl_assert_equal_i(i32 5, i64 %42)
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %85, %0
  %45 = load i64, i64* %6, align 8
  %46 = load i32*, i32** @_index, align 8
  %47 = call i64 @git_index_entrycount(i32* %46)
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %44
  %50 = load i32*, i32** @_index, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call %struct.TYPE_9__* @git_index_get_byindex(i32* %50, i64 %51)
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %4, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %49
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @cl_assert_equal_i(i32 0, i64 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @cl_assert_equal_i(i32 0, i64 %67)
  br label %84

69:                                               ; preds = %49
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 0, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @cl_assert(i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 0, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @cl_assert(i32 %82)
  br label %84

84:                                               ; preds = %69, %58
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %44

88:                                               ; preds = %44
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i64 @git_index_entrycount(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_write_tree(i32*, i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_index_new(i32**) #1

declare dso_local i32 @git_index_read_tree(i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @git_index_read_index(i32*, i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local %struct.TYPE_9__* @git_index_get_byindex(i32*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
