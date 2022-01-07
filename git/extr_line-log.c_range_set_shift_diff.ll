; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_range_set_shift_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_range_set_shift_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range_set = type { i32, %struct.range* }
%struct.range = type { i64, i64 }
%struct.diff_ranges = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.range* }
%struct.TYPE_3__ = type { %struct.range* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.range_set*, %struct.range_set*, %struct.diff_ranges*)* @range_set_shift_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_set_shift_diff(%struct.range_set* %0, %struct.range_set* %1, %struct.diff_ranges* %2) #0 {
  %4 = alloca %struct.range_set*, align 8
  %5 = alloca %struct.range_set*, align 8
  %6 = alloca %struct.diff_ranges*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.range*, align 8
  %11 = alloca %struct.range*, align 8
  %12 = alloca %struct.range*, align 8
  store %struct.range_set* %0, %struct.range_set** %4, align 8
  store %struct.range_set* %1, %struct.range_set** %5, align 8
  store %struct.diff_ranges* %2, %struct.diff_ranges** %6, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %13 = load %struct.range_set*, %struct.range_set** %5, align 8
  %14 = getelementptr inbounds %struct.range_set, %struct.range_set* %13, i32 0, i32 1
  %15 = load %struct.range*, %struct.range** %14, align 8
  store %struct.range* %15, %struct.range** %10, align 8
  %16 = load %struct.diff_ranges*, %struct.diff_ranges** %6, align 8
  %17 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.range*, %struct.range** %18, align 8
  store %struct.range* %19, %struct.range** %11, align 8
  %20 = load %struct.diff_ranges*, %struct.diff_ranges** %6, align 8
  %21 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.range*, %struct.range** %22, align 8
  store %struct.range* %23, %struct.range** %12, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %105, %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.range_set*, %struct.range_set** %5, align 8
  %27 = getelementptr inbounds %struct.range_set, %struct.range_set* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %108

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.diff_ranges*, %struct.diff_ranges** %6, align 8
  %34 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.range*, %struct.range** %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.range, %struct.range* %39, i64 %41
  %43 = getelementptr inbounds %struct.range, %struct.range* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.range*, %struct.range** %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.range, %struct.range* %45, i64 %47
  %49 = getelementptr inbounds %struct.range, %struct.range* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %44, %50
  br label %52

52:                                               ; preds = %38, %31
  %53 = phi i1 [ false, %31 ], [ %51, %38 ]
  br i1 %53, label %54, label %86

54:                                               ; preds = %52
  %55 = load %struct.range*, %struct.range** %12, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.range, %struct.range* %55, i64 %57
  %59 = getelementptr inbounds %struct.range, %struct.range* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.range*, %struct.range** %12, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.range, %struct.range* %61, i64 %63
  %65 = getelementptr inbounds %struct.range, %struct.range* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %60, %66
  %68 = load %struct.range*, %struct.range** %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.range, %struct.range* %68, i64 %70
  %72 = getelementptr inbounds %struct.range, %struct.range* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.range*, %struct.range** %11, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.range, %struct.range* %74, i64 %76
  %78 = getelementptr inbounds %struct.range, %struct.range* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %73, %79
  %81 = sub nsw i64 %67, %80
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %9, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %31

86:                                               ; preds = %52
  %87 = load %struct.range_set*, %struct.range_set** %4, align 8
  %88 = load %struct.range*, %struct.range** %10, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.range, %struct.range* %88, i64 %90
  %92 = getelementptr inbounds %struct.range, %struct.range* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %93, %94
  %96 = load %struct.range*, %struct.range** %10, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.range, %struct.range* %96, i64 %98
  %100 = getelementptr inbounds %struct.range, %struct.range* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @range_set_append(%struct.range_set* %87, i64 %95, i64 %103)
  br label %105

105:                                              ; preds = %86
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %24

108:                                              ; preds = %24
  ret void
}

declare dso_local i32 @range_set_append(%struct.range_set*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
