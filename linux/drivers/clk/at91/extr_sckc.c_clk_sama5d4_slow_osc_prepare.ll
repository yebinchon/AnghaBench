; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_sckc.c_clk_sama5d4_slow_osc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_sckc.c_clk_sama5d4_slow_osc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_sama5d4_slow_osc = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@system_state = common dso_local global i64 0, align 8
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_sama5d4_slow_osc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sama5d4_slow_osc_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_sama5d4_slow_osc*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %6 = call %struct.clk_sama5d4_slow_osc* @to_clk_sama5d4_slow_osc(%struct.clk_hw* %5)
  store %struct.clk_sama5d4_slow_osc* %6, %struct.clk_sama5d4_slow_osc** %4, align 8
  %7 = load %struct.clk_sama5d4_slow_osc*, %struct.clk_sama5d4_slow_osc** %4, align 8
  %8 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, %struct.clk_sama5d4_slow_osc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.clk_sama5d4_slow_osc*, %struct.clk_sama5d4_slow_osc** %4, align 8
  %14 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, %struct.clk_sama5d4_slow_osc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @readl(i32 %15)
  %17 = load %struct.clk_sama5d4_slow_osc*, %struct.clk_sama5d4_slow_osc** %4, align 8
  %18 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, %struct.clk_sama5d4_slow_osc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load %struct.clk_sama5d4_slow_osc*, %struct.clk_sama5d4_slow_osc** %4, align 8
  %26 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, %struct.clk_sama5d4_slow_osc* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  store i32 0, i32* %2, align 4
  br label %48

27:                                               ; preds = %12
  %28 = load i64, i64* @system_state, align 8
  %29 = load i64, i64* @SYSTEM_RUNNING, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.clk_sama5d4_slow_osc*, %struct.clk_sama5d4_slow_osc** %4, align 8
  %33 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, %struct.clk_sama5d4_slow_osc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @udelay(i64 %34)
  br label %45

36:                                               ; preds = %27
  %37 = load %struct.clk_sama5d4_slow_osc*, %struct.clk_sama5d4_slow_osc** %4, align 8
  %38 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, %struct.clk_sama5d4_slow_osc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.clk_sama5d4_slow_osc*, %struct.clk_sama5d4_slow_osc** %4, align 8
  %41 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, %struct.clk_sama5d4_slow_osc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i32 @usleep_range(i64 %39, i64 %43)
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.clk_sama5d4_slow_osc*, %struct.clk_sama5d4_slow_osc** %4, align 8
  %47 = getelementptr inbounds %struct.clk_sama5d4_slow_osc, %struct.clk_sama5d4_slow_osc* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %24, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.clk_sama5d4_slow_osc* @to_clk_sama5d4_slow_osc(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @usleep_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
