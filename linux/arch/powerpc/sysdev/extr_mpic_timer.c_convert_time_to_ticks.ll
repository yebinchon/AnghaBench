; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_convert_time_to_ticks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_convert_time_to_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_group_priv = type { i64 }

@ULLONG_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timer_group_priv*, i64, i64*)* @convert_time_to_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_time_to_ticks(%struct.timer_group_priv* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timer_group_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.timer_group_priv* %0, %struct.timer_group_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i32, i32* @ULLONG_MAX, align 4
  %10 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %11 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @div_u64(i32 %9, i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %23 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = mul nsw i64 %21, %24
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @div_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
