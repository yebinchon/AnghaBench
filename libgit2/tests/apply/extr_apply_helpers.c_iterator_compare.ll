; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_apply_helpers.c_iterator_compare.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_apply_helpers.c_iterator_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.iterator_compare_data = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @iterator_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterator_compare(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iterator_compare_data*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.iterator_compare_data*
  store %struct.iterator_compare_data* %9, %struct.iterator_compare_data** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_6__* %10)
  %12 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %13 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %16 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_i(i32 %11, i32 %20)
  %22 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %23 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %26 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @git_oid_fromstr(i32* %6, i32 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = call i32 @cl_assert_equal_oid(i32* %34, i32* %6)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %40 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %43 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cl_assert_equal_i(i32 %38, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %53 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %56 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cl_assert_equal_s(i32 %51, i32 %60)
  %62 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %63 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %66 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp uge i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %75

70:                                               ; preds = %2
  %71 = load %struct.iterator_compare_data*, %struct.iterator_compare_data** %7, align 8
  %72 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %69
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_6__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
