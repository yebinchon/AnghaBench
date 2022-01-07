; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_common.c_qcom_find_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_common.c_qcom_find_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freq_tbl = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.freq_tbl* @qcom_find_freq(%struct.freq_tbl* %0, i64 %1) #0 {
  %3 = alloca %struct.freq_tbl*, align 8
  %4 = alloca %struct.freq_tbl*, align 8
  %5 = alloca i64, align 8
  store %struct.freq_tbl* %0, %struct.freq_tbl** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %7 = icmp ne %struct.freq_tbl* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.freq_tbl* null, %struct.freq_tbl** %3, align 8
  br label %30

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %24, %9
  %11 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %12 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %18 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ule i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  store %struct.freq_tbl* %22, %struct.freq_tbl** %3, align 8
  br label %30

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %26 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %25, i32 1
  store %struct.freq_tbl* %26, %struct.freq_tbl** %4, align 8
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %29 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %28, i64 -1
  store %struct.freq_tbl* %29, %struct.freq_tbl** %3, align 8
  br label %30

30:                                               ; preds = %27, %21, %8
  %31 = load %struct.freq_tbl*, %struct.freq_tbl** %3, align 8
  ret %struct.freq_tbl* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
