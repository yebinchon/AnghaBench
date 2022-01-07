; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_sort_and_merge_range_set.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_sort_and_merge_range_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range_set = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@range_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_and_merge_range_set(%struct.range_set* %0) #0 {
  %2 = alloca %struct.range_set*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.range_set* %0, %struct.range_set** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.range_set*, %struct.range_set** %2, align 8
  %6 = getelementptr inbounds %struct.range_set, %struct.range_set* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.range_set*, %struct.range_set** %2, align 8
  %9 = getelementptr inbounds %struct.range_set, %struct.range_set* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @range_cmp, align 4
  %12 = call i32 @QSORT(%struct.TYPE_2__* %7, i32 %10, i32 %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %131, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.range_set*, %struct.range_set** %2, align 8
  %16 = getelementptr inbounds %struct.range_set, %struct.range_set* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %134

19:                                               ; preds = %13
  %20 = load %struct.range_set*, %struct.range_set** %2, align 8
  %21 = getelementptr inbounds %struct.range_set, %struct.range_set* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.range_set*, %struct.range_set** %2, align 8
  %29 = getelementptr inbounds %struct.range_set, %struct.range_set* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %27, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  br label %131

38:                                               ; preds = %19
  %39 = load i32, i32* %4, align 4
  %40 = icmp ugt i32 %39, 0
  br i1 %40, label %41, label %97

41:                                               ; preds = %38
  %42 = load %struct.range_set*, %struct.range_set** %2, align 8
  %43 = getelementptr inbounds %struct.range_set, %struct.range_set* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.range_set*, %struct.range_set** %2, align 8
  %51 = getelementptr inbounds %struct.range_set, %struct.range_set* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sub i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %49, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %41
  %61 = load %struct.range_set*, %struct.range_set** %2, align 8
  %62 = getelementptr inbounds %struct.range_set, %struct.range_set* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sub i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.range_set*, %struct.range_set** %2, align 8
  %71 = getelementptr inbounds %struct.range_set, %struct.range_set* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %69, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %60
  %80 = load %struct.range_set*, %struct.range_set** %2, align 8
  %81 = getelementptr inbounds %struct.range_set, %struct.range_set* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.range_set*, %struct.range_set** %2, align 8
  %89 = getelementptr inbounds %struct.range_set, %struct.range_set* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sub i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i64 %87, i64* %95, align 8
  br label %96

96:                                               ; preds = %79, %60
  br label %130

97:                                               ; preds = %41, %38
  %98 = load %struct.range_set*, %struct.range_set** %2, align 8
  %99 = getelementptr inbounds %struct.range_set, %struct.range_set* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.range_set*, %struct.range_set** %2, align 8
  %107 = getelementptr inbounds %struct.range_set, %struct.range_set* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i64 %105, i64* %112, align 8
  %113 = load %struct.range_set*, %struct.range_set** %2, align 8
  %114 = getelementptr inbounds %struct.range_set, %struct.range_set* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.range_set*, %struct.range_set** %2, align 8
  %122 = getelementptr inbounds %struct.range_set, %struct.range_set* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  store i64 %120, i64* %127, align 8
  %128 = load i32, i32* %4, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %97, %96
  br label %131

131:                                              ; preds = %130, %37
  %132 = load i32, i32* %3, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %13

134:                                              ; preds = %13
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.range_set*, %struct.range_set** %2, align 8
  %137 = getelementptr inbounds %struct.range_set, %struct.range_set* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ule i32 %135, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.range_set*, %struct.range_set** %2, align 8
  %144 = getelementptr inbounds %struct.range_set, %struct.range_set* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.range_set*, %struct.range_set** %2, align 8
  %146 = call i32 @range_set_check_invariants(%struct.range_set* %145)
  ret void
}

declare dso_local i32 @QSORT(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @range_set_check_invariants(%struct.range_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
