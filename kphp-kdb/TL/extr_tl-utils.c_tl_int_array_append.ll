; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_int_array_append.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_int_array_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_int_array = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_int_array_append(%struct.tl_int_array* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_int_array*, align 8
  %5 = alloca i32, align 4
  store %struct.tl_int_array* %0, %struct.tl_int_array** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %7 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %10 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %17 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.tl_int_array*, %struct.tl_int_array** %4, align 8
  %20 = getelementptr inbounds %struct.tl_int_array, %struct.tl_int_array* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %15, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
