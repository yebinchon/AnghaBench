; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_heap_sort_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_heap_sort_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@R_cnt = common dso_local global i32 0, align 4
@R = common dso_local global %struct.item** null, align 8
@RR = common dso_local global double* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @heap_sort_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heap_sort_res() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.item*, align 8
  %5 = alloca double, align 8
  %6 = load i32, i32* @R_cnt, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %108, %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %111

11:                                               ; preds = %8
  %12 = load %struct.item**, %struct.item*** @R, align 8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.item*, %struct.item** %12, i64 %15
  %17 = load %struct.item*, %struct.item** %16, align 8
  store %struct.item* %17, %struct.item** %4, align 8
  %18 = load double*, double** @RR, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %18, i64 %21
  %23 = load double, double* %22, align 8
  store double %23, double* %5, align 8
  %24 = load %struct.item**, %struct.item*** @R, align 8
  %25 = getelementptr inbounds %struct.item*, %struct.item** %24, i64 1
  %26 = load %struct.item*, %struct.item** %25, align 8
  %27 = load %struct.item**, %struct.item*** @R, align 8
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.item*, %struct.item** %27, i64 %30
  store %struct.item* %26, %struct.item** %31, align 8
  %32 = load double*, double** @RR, align 8
  %33 = getelementptr inbounds double, double* %32, i64 1
  %34 = load double, double* %33, align 8
  %35 = load double*, double** @RR, align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %35, i64 %38
  store double %34, double* %39, align 8
  store i32 1, i32* %1, align 4
  br label %40

40:                                               ; preds = %11, %77
  %41 = load i32, i32* %1, align 4
  %42 = mul nsw i32 2, %41
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %97

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load double*, double** @RR, align 8
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %52, i64 %55
  %57 = load double, double* %56, align 8
  %58 = load double*, double** @RR, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = fcmp ogt double %57, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %51
  br label %68

68:                                               ; preds = %67, %47
  %69 = load double, double* %5, align 8
  %70 = load double*, double** @RR, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fcmp oge double %69, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %97

77:                                               ; preds = %68
  %78 = load %struct.item**, %struct.item*** @R, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.item*, %struct.item** %78, i64 %80
  %82 = load %struct.item*, %struct.item** %81, align 8
  %83 = load %struct.item**, %struct.item*** @R, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.item*, %struct.item** %83, i64 %85
  store %struct.item* %82, %struct.item** %86, align 8
  %87 = load double*, double** @RR, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  %91 = load double, double* %90, align 8
  %92 = load double*, double** @RR, align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %92, i64 %94
  store double %91, double* %95, align 8
  %96 = load i32, i32* %2, align 4
  store i32 %96, i32* %1, align 4
  br label %40

97:                                               ; preds = %76, %46
  %98 = load %struct.item*, %struct.item** %4, align 8
  %99 = load %struct.item**, %struct.item*** @R, align 8
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.item*, %struct.item** %99, i64 %101
  store %struct.item* %98, %struct.item** %102, align 8
  %103 = load double, double* %5, align 8
  %104 = load double*, double** @RR, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  store double %103, double* %107, align 8
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %3, align 4
  br label %8

111:                                              ; preds = %8
  store i32 0, i32* %1, align 4
  br label %112

112:                                              ; preds = %137, %111
  %113 = load i32, i32* %1, align 4
  %114 = load i32, i32* @R_cnt, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %112
  %117 = load %struct.item**, %struct.item*** @R, align 8
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.item*, %struct.item** %117, i64 %120
  %122 = load %struct.item*, %struct.item** %121, align 8
  %123 = load %struct.item**, %struct.item*** @R, align 8
  %124 = load i32, i32* %1, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.item*, %struct.item** %123, i64 %125
  store %struct.item* %122, %struct.item** %126, align 8
  %127 = load double*, double** @RR, align 8
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %127, i64 %130
  %132 = load double, double* %131, align 8
  %133 = load double*, double** @RR, align 8
  %134 = load i32, i32* %1, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %133, i64 %135
  store double %132, double* %136, align 8
  br label %137

137:                                              ; preds = %116
  %138 = load i32, i32* %1, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %1, align 4
  br label %112

140:                                              ; preds = %112
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
