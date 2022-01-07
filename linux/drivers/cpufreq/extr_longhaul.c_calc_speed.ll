; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_calc_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longhaul.c_calc_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fsb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calc_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sdiv i32 %4, 10
  %6 = load i32, i32* @fsb, align 4
  %7 = mul nsw i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = srem i32 %8, 10
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @fsb, align 4
  %13 = sdiv i32 %12, 2
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %17, 1000
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
