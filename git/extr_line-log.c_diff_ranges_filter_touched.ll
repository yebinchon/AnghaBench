; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_diff_ranges_filter_touched.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_diff_ranges_filter_touched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_ranges = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.range_set = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_ranges*, %struct.diff_ranges*, %struct.range_set*)* @diff_ranges_filter_touched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_ranges_filter_touched(%struct.diff_ranges* %0, %struct.diff_ranges* %1, %struct.range_set* %2) #0 {
  %4 = alloca %struct.diff_ranges*, align 8
  %5 = alloca %struct.diff_ranges*, align 8
  %6 = alloca %struct.range_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.diff_ranges* %0, %struct.diff_ranges** %4, align 8
  store %struct.diff_ranges* %1, %struct.diff_ranges** %5, align 8
  store %struct.range_set* %2, %struct.range_set** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.diff_ranges*, %struct.diff_ranges** %4, align 8
  %10 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %114, %3
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.diff_ranges*, %struct.diff_ranges** %5, align 8
  %20 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %24, label %117

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %53, %24
  %26 = load %struct.diff_ranges*, %struct.diff_ranges** %5, align 8
  %27 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.range_set*, %struct.range_set** %6, align 8
  %36 = getelementptr inbounds %struct.range_set, %struct.range_set* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %34, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %25
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.range_set*, %struct.range_set** %6, align 8
  %49 = getelementptr inbounds %struct.range_set, %struct.range_set* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %117

53:                                               ; preds = %44
  br label %25

54:                                               ; preds = %25
  %55 = load %struct.diff_ranges*, %struct.diff_ranges** %5, align 8
  %56 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = load %struct.range_set*, %struct.range_set** %6, align 8
  %63 = getelementptr inbounds %struct.range_set, %struct.range_set* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = call i64 @ranges_overlap(%struct.TYPE_4__* %61, %struct.TYPE_5__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %54
  %71 = load %struct.diff_ranges*, %struct.diff_ranges** %4, align 8
  %72 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %71, i32 0, i32 1
  %73 = load %struct.diff_ranges*, %struct.diff_ranges** %5, align 8
  %74 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.diff_ranges*, %struct.diff_ranges** %5, align 8
  %83 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @range_set_append(%struct.TYPE_6__* %72, i64 %81, i32 %90)
  %92 = load %struct.diff_ranges*, %struct.diff_ranges** %4, align 8
  %93 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %92, i32 0, i32 0
  %94 = load %struct.diff_ranges*, %struct.diff_ranges** %5, align 8
  %95 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.diff_ranges*, %struct.diff_ranges** %5, align 8
  %104 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @range_set_append(%struct.TYPE_6__* %93, i64 %102, i32 %111)
  br label %113

113:                                              ; preds = %70, %54
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %16

117:                                              ; preds = %52, %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ranges_overlap(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @range_set_append(%struct.TYPE_6__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
