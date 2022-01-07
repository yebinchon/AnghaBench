; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_test_diff_index__reports_conflicts_when_reversed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_test_diff_index__reports_conflicts_when_reversed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32 }

@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@GIT_DELTA_ADDED = common dso_local global i64 0, align 8
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@GIT_DELTA_CONFLICTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_index__reports_conflicts_when_reversed() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %3 = call i32 @do_conflicted_diff(%struct.TYPE_3__* %1, i32 %2)
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @cl_assert_equal_i(i32 8, i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @GIT_DELTA_ADDED, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cl_assert_equal_i(i32 2, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cl_assert_equal_i(i32 3, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_assert_equal_i(i32 2, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @GIT_DELTA_CONFLICTED, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_assert_equal_i(i32 1, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cl_assert_equal_i(i32 7, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_i(i32 9, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cl_assert_equal_i(i32 2, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cl_assert_equal_i(i32 2, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cl_assert_equal_i(i32 5, i32 %44)
  ret void
}

declare dso_local i32 @do_conflicted_diff(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
