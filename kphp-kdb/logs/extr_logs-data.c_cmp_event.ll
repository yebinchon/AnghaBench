; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_cmp_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_cmp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_sort_type = common dso_local global i64 0, align 8
@t_double = common dso_local global i64 0, align 8
@global_data = common dso_local global i64* null, align 8
@global_rcid = common dso_local global i32 0, align 4
@global_sort_field = common dso_local global i32 0, align 4
@global_sort_direction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_event(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i64, i64* @global_sort_type, align 8
  %19 = load i64, i64* @t_double, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %2
  %22 = load i64*, i64** @global_data, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @global_rcid, align 4
  %25 = load i32, i32* @global_sort_field, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %22, i64 %28
  %30 = bitcast i64* %29 to double*
  %31 = load double, double* %30, align 8
  store double %31, double* %8, align 8
  %32 = load i64*, i64** @global_data, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @global_rcid, align 4
  %35 = load i32, i32* @global_sort_field, align 4
  %36 = mul nsw i32 %34, %35
  %37 = add nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %32, i64 %38
  %40 = bitcast i64* %39 to double*
  %41 = load double, double* %40, align 8
  store double %41, double* %9, align 8
  %42 = load double, double* %8, align 8
  %43 = load double, double* %9, align 8
  %44 = fcmp une double %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %21
  %46 = load double, double* %8, align 8
  %47 = load double, double* %9, align 8
  %48 = fcmp ogt double %46, %47
  %49 = zext i1 %48 to i32
  %50 = mul nsw i32 2, %49
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* @global_sort_direction, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %3, align 4
  br label %113

54:                                               ; preds = %21
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = mul nsw i32 2, %62
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* @global_sort_direction, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %3, align 4
  br label %113

67:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %113

68:                                               ; preds = %2
  %69 = load i64*, i64** @global_data, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @global_rcid, align 4
  %72 = load i32, i32* @global_sort_field, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %69, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  %78 = load i64*, i64** @global_data, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @global_rcid, align 4
  %81 = load i32, i32* @global_sort_field, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %79, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %78, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %68
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp sgt i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = mul nsw i32 2, %94
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* @global_sort_direction, align 4
  %98 = mul nsw i32 %96, %97
  store i32 %98, i32* %3, align 4
  br label %113

99:                                               ; preds = %68
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp sgt i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = mul nsw i32 2, %107
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* @global_sort_direction, align 4
  %111 = mul nsw i32 %109, %110
  store i32 %111, i32* %3, align 4
  br label %113

112:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %103, %90, %67, %58, %45
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
