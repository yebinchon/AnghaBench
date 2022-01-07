; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-pll.c_clk_pll4600c28_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-pll.c_clk_pll4600c28_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_pll = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.stm_pll*, i64*)* @clk_pll4600c28_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll4600c28_get_rate(i64 %0, %struct.stm_pll* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stm_pll*, align 8
  %6 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.stm_pll* %1, %struct.stm_pll** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.stm_pll*, %struct.stm_pll** %5, align 8
  %8 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.stm_pll*, %struct.stm_pll** %5, align 8
  %13 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.stm_pll*, %struct.stm_pll** %5, align 8
  %17 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %15, %19
  %21 = mul i64 %20, 2
  %22 = load %struct.stm_pll*, %struct.stm_pll** %5, align 8
  %23 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %21, %24
  %26 = load i64*, i64** %6, align 8
  store i64 %25, i64* %26, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
