; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_int_array_append_double.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_int_array_append_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_int_array = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_int_array_append_double(%struct.tl_int_array* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_int_array*, align 8
  %5 = alloca double, align 8
  store %struct.tl_int_array* %0, %struct.tl_int_array** %4, align 8
  store double %1, double* %5, align 8
  %6 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %7 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %10 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  %13 = icmp sge i32 %8, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load double, double* %5, align 8
  %17 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %18 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %21 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = bitcast i32* %24 to double*
  store double %16, double* %25, align 8
  %26 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %27 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %27, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %15, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
