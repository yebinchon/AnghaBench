; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__can_iterate.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__can_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }

@TEST_INDEX_PATH = common dso_local global i32 0, align 4
@test_entries = common dso_local global %struct.TYPE_13__* null, align 8
@GIT_ITEROVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"iterator did not contain all test entries\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__can_iterate() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32, i32* @TEST_INDEX_PATH, align 4
  %9 = call i32 @git_index_open(i32** %1, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_index_iterator_new(%struct.TYPE_11__** %2, i32* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = call i32 @git_vector_is_sorted(i32* %15)
  %17 = call i32 @cl_assert(i32 %16)
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %76, %0
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @test_entries, align 8
  %21 = call i64 @ARRAY_SIZE(%struct.TYPE_13__* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %35, %23
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = call i32 @git_index_iterator_next(%struct.TYPE_12__** %3, %struct.TYPE_11__* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GIT_ITEROVER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @cl_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @cl_git_pass(i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @test_entries, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %36, %43
  br i1 %44, label %24, label %45

45:                                               ; preds = %35
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** @test_entries, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cl_assert_equal_s(i32 %48, i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @test_entries, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @cl_assert_equal_i(i64 %58, i64 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** @test_entries, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @cl_assert_equal_i(i64 %67, i64 %72)
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %45
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %4, align 8
  br label %18

79:                                               ; preds = %18
  br label %80

80:                                               ; preds = %84, %79
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = call i32 @git_index_iterator_next(%struct.TYPE_12__** %3, %struct.TYPE_11__* %81)
  store i32 %82, i32* %7, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %80

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @GIT_ITEROVER, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @cl_git_fail(i32 %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** @test_entries, align 8
  %95 = call i64 @ARRAY_SIZE(%struct.TYPE_13__* %94)
  %96 = call i32 @cl_assert_equal_i(i64 %93, i64 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = call i32 @git_index_iterator_free(%struct.TYPE_11__* %97)
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @git_index_free(i32* %99)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_open(i32**, i32) #1

declare dso_local i32 @git_index_iterator_new(%struct.TYPE_11__**, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_vector_is_sorted(i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @git_index_iterator_next(%struct.TYPE_12__**, %struct.TYPE_11__*) #1

declare dso_local i32 @cl_fail(i8*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i64, i64) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_index_iterator_free(%struct.TYPE_11__*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
