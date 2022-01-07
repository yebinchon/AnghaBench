; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_rgclk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_rgclk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clk_hw*)*, i64 (%struct.clk_hw*)* }
%struct.clk_hw = type { i32 }
%struct.clk_gate = type { i32 }
%struct.stm32_rgate = type { i32 }

@RGATE_TIMEOUT = common dso_local global i32 0, align 4
@clk_gate_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @rgclk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rgclk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_gate*, align 8
  %5 = alloca %struct.stm32_rgate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_gate* @to_clk_gate(%struct.clk_hw* %8)
  store %struct.clk_gate* %9, %struct.clk_gate** %4, align 8
  %10 = load %struct.clk_gate*, %struct.clk_gate** %4, align 8
  %11 = call %struct.stm32_rgate* @to_rgclk(%struct.clk_gate* %10)
  store %struct.stm32_rgate* %11, %struct.stm32_rgate** %5, align 8
  %12 = load i32, i32* @RGATE_TIMEOUT, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i64 (%struct.clk_hw*)*, i64 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 1), align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %15 = call i64 %13(%struct.clk_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = call i32 (...) @disable_power_domain_write_protection()
  %20 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk_gate_ops, i32 0, i32 0), align 8
  %21 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %22 = call i32 %20(%struct.clk_hw* %21)
  br label %23

23:                                               ; preds = %48, %18
  %24 = load %struct.clk_gate*, %struct.clk_gate** %4, align 8
  %25 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @readl(i32 %26)
  %28 = load %struct.stm32_rgate*, %struct.stm32_rgate** %5, align 8
  %29 = getelementptr inbounds %struct.stm32_rgate, %struct.stm32_rgate* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = call i32 @udelay(i32 100)
  br label %40

40:                                               ; preds = %38, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %23, label %50

50:                                               ; preds = %48
  %51 = call i32 (...) @enable_power_domain_write_protection()
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.clk_gate* @to_clk_gate(%struct.clk_hw*) #1

declare dso_local %struct.stm32_rgate* @to_rgclk(%struct.clk_gate*) #1

declare dso_local i32 @disable_power_domain_write_protection(...) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @enable_power_domain_write_protection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
