; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { {}*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap1_clk_round_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.clk*, %struct.clk** %4, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i64 (%struct.clk*, i64)**
  %9 = load i64 (%struct.clk*, i64)*, i64 (%struct.clk*, i64)** %8, align 8
  %10 = icmp ne i64 (%struct.clk*, i64)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i64 (%struct.clk*, i64)**
  %15 = load i64 (%struct.clk*, i64)*, i64 (%struct.clk*, i64)** %14, align 8
  %16 = load %struct.clk*, %struct.clk** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 %15(%struct.clk* %16, i64 %17)
  store i64 %18, i64* %3, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.clk*, %struct.clk** %4, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %19, %11
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
