; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__find_in_existing.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__find_in_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@TEST_INDEX_PATH = common dso_local global i32 0, align 4
@test_entries = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__find_in_existing() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @TEST_INDEX_PATH, align 4
  %5 = call i32 @git_index_open(i32** %1, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %35, %0
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_entries, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = load i32*, i32** %1, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_entries, align 8
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @git_index_find(i64* %3, i32* %13, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @test_entries, align 8
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %25, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  br label %35

35:                                               ; preds = %12
  %36 = load i32, i32* %2, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %7

38:                                               ; preds = %7
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_index_free(i32* %39)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_open(i32**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_find(i64*, i32*, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
