; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_qsort.c_test_core_qsort__sorting_big_entries.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_qsort.c_test_core_qsort__sorting_big_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big_entries = type { %struct.big_entries** }

@cmp_big = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_qsort__sorting_big_entries() #0 {
  %1 = alloca [5 x %struct.big_entries], align 16
  %2 = bitcast [5 x %struct.big_entries]* %1 to %struct.big_entries**
  %3 = call i32 @memset(%struct.big_entries** %2, i8 signext 0, i32 40)
  %4 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 0
  %5 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %4, i32 0, i32 0
  %6 = load %struct.big_entries**, %struct.big_entries*** %5, align 16
  %7 = call i32 @memset(%struct.big_entries** %6, i8 signext 119, i32 7)
  %8 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 1
  %9 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %8, i32 0, i32 0
  %10 = load %struct.big_entries**, %struct.big_entries*** %9, align 8
  %11 = call i32 @memset(%struct.big_entries** %10, i8 signext 99, i32 7)
  %12 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 2
  %13 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %12, i32 0, i32 0
  %14 = load %struct.big_entries**, %struct.big_entries*** %13, align 16
  %15 = call i32 @memset(%struct.big_entries** %14, i8 signext 119, i32 7)
  %16 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 3
  %17 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %16, i32 0, i32 0
  %18 = load %struct.big_entries**, %struct.big_entries*** %17, align 8
  %19 = call i32 @memset(%struct.big_entries** %18, i8 signext 104, i32 7)
  %20 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 4
  %21 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %20, i32 0, i32 0
  %22 = load %struct.big_entries**, %struct.big_entries*** %21, align 16
  %23 = call i32 @memset(%struct.big_entries** %22, i8 signext 97, i32 7)
  %24 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 0
  %25 = load i32, i32* @cmp_big, align 4
  %26 = call i32 @assert_sorted(%struct.big_entries* %24, i32 %25)
  %27 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 0
  %28 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %27, i32 0, i32 0
  %29 = load %struct.big_entries**, %struct.big_entries*** %28, align 16
  %30 = call i32 @strspn(%struct.big_entries** %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @cl_assert_equal_i(i32 %30, i32 7)
  %32 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 1
  %33 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %32, i32 0, i32 0
  %34 = load %struct.big_entries**, %struct.big_entries*** %33, align 8
  %35 = call i32 @strspn(%struct.big_entries** %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @cl_assert_equal_i(i32 %35, i32 7)
  %37 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 2
  %38 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %37, i32 0, i32 0
  %39 = load %struct.big_entries**, %struct.big_entries*** %38, align 16
  %40 = call i32 @strspn(%struct.big_entries** %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @cl_assert_equal_i(i32 %40, i32 7)
  %42 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 3
  %43 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %42, i32 0, i32 0
  %44 = load %struct.big_entries**, %struct.big_entries*** %43, align 8
  %45 = call i32 @strspn(%struct.big_entries** %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @cl_assert_equal_i(i32 %45, i32 7)
  %47 = getelementptr inbounds [5 x %struct.big_entries], [5 x %struct.big_entries]* %1, i64 0, i64 4
  %48 = getelementptr inbounds %struct.big_entries, %struct.big_entries* %47, i32 0, i32 0
  %49 = load %struct.big_entries**, %struct.big_entries*** %48, align 16
  %50 = call i32 @strspn(%struct.big_entries** %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 @cl_assert_equal_i(i32 %50, i32 7)
  ret void
}

declare dso_local i32 @memset(%struct.big_entries**, i8 signext, i32) #1

declare dso_local i32 @assert_sorted(%struct.big_entries*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @strspn(%struct.big_entries**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
