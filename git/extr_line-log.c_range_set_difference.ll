; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_range_set_difference.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_range_set_difference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range_set = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.range_set*, %struct.range_set*, %struct.range_set*)* @range_set_difference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_set_difference(%struct.range_set* %0, %struct.range_set* %1, %struct.range_set* %2) #0 {
  %4 = alloca %struct.range_set*, align 8
  %5 = alloca %struct.range_set*, align 8
  %6 = alloca %struct.range_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.range_set* %0, %struct.range_set** %4, align 8
  store %struct.range_set* %1, %struct.range_set** %5, align 8
  store %struct.range_set* %2, %struct.range_set** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %149, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.range_set*, %struct.range_set** %5, align 8
  %14 = getelementptr inbounds %struct.range_set, %struct.range_set* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %152

17:                                               ; preds = %11
  %18 = load %struct.range_set*, %struct.range_set** %5, align 8
  %19 = getelementptr inbounds %struct.range_set, %struct.range_set* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.range_set*, %struct.range_set** %5, align 8
  %27 = getelementptr inbounds %struct.range_set, %struct.range_set* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %147, %17
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %148

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.range_set*, %struct.range_set** %6, align 8
  %42 = getelementptr inbounds %struct.range_set, %struct.range_set* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.range_set*, %struct.range_set** %6, align 8
  %48 = getelementptr inbounds %struct.range_set, %struct.range_set* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %46, %54
  br label %56

56:                                               ; preds = %45, %39
  %57 = phi i1 [ false, %39 ], [ %55, %45 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %39

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.range_set*, %struct.range_set** %6, align 8
  %64 = getelementptr inbounds %struct.range_set, %struct.range_set* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp uge i32 %62, %65
  br i1 %66, label %78, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.range_set*, %struct.range_set** %6, align 8
  %70 = getelementptr inbounds %struct.range_set, %struct.range_set* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %68, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %67, %61
  %79 = load %struct.range_set*, %struct.range_set** %4, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @range_set_append(%struct.range_set* %79, i64 %80, i64 %81)
  br label %148

83:                                               ; preds = %67
  %84 = load i64, i64* %9, align 8
  %85 = load %struct.range_set*, %struct.range_set** %6, align 8
  %86 = getelementptr inbounds %struct.range_set, %struct.range_set* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sge i64 %84, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %83
  %95 = load %struct.range_set*, %struct.range_set** %6, align 8
  %96 = getelementptr inbounds %struct.range_set, %struct.range_set* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %9, align 8
  br label %147

103:                                              ; preds = %83
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.range_set*, %struct.range_set** %6, align 8
  %106 = getelementptr inbounds %struct.range_set, %struct.range_set* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %104, %112
  br i1 %113, label %114, label %146

114:                                              ; preds = %103
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.range_set*, %struct.range_set** %6, align 8
  %117 = getelementptr inbounds %struct.range_set, %struct.range_set* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %115, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %114
  %126 = load %struct.range_set*, %struct.range_set** %4, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.range_set*, %struct.range_set** %6, align 8
  %129 = getelementptr inbounds %struct.range_set, %struct.range_set* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @range_set_append(%struct.range_set* %126, i64 %127, i64 %135)
  br label %137

137:                                              ; preds = %125, %114
  %138 = load %struct.range_set*, %struct.range_set** %6, align 8
  %139 = getelementptr inbounds %struct.range_set, %struct.range_set* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %9, align 8
  br label %146

146:                                              ; preds = %137, %103
  br label %147

147:                                              ; preds = %146, %94
  br label %34

148:                                              ; preds = %78, %34
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %11

152:                                              ; preds = %11
  ret void
}

declare dso_local i32 @range_set_append(%struct.range_set*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
