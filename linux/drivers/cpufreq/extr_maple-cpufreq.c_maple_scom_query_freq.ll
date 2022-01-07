; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_maple-cpufreq.c_maple_scom_query_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_maple-cpufreq.c_maple_scom_query_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCOM_PSR = common dso_local global i32 0, align 4
@maple_pmode_max = common dso_local global i32 0, align 4
@PSR_CUR_SPEED_SHIFT = common dso_local global i64 0, align 8
@maple_pmode_data = common dso_local global i64* null, align 8
@PCR_SPEED_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @maple_scom_query_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maple_scom_query_freq() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SCOM_PSR, align 4
  %4 = call i64 @scom970_read(i32 %3)
  store i64 %4, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %25, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @maple_pmode_max, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @PSR_CUR_SPEED_SHIFT, align 8
  %12 = lshr i64 %10, %11
  %13 = load i64*, i64** @maple_pmode_data, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCR_SPEED_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = xor i64 %12, %19
  %21 = and i64 %20, 3
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %28

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %5

28:                                               ; preds = %23, %5
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @scom970_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
