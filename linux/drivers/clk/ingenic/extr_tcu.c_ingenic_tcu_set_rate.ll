; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_tcu_clk = type { i32, %struct.TYPE_2__*, %struct.ingenic_tcu_clk_info* }
%struct.TYPE_2__ = type { i32 }
%struct.ingenic_tcu_clk_info = type { i32 }

@TCU_TCSR_PRESCALE_MASK = common dso_local global i32 0, align 4
@TCU_TCSR_PRESCALE_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to update TCSR %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @ingenic_tcu_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_tcu_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ingenic_tcu_clk*, align 8
  %8 = alloca %struct.ingenic_tcu_clk_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw* %12)
  store %struct.ingenic_tcu_clk* %13, %struct.ingenic_tcu_clk** %7, align 8
  %14 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %7, align 8
  %15 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %14, i32 0, i32 2
  %16 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %15, align 8
  store %struct.ingenic_tcu_clk_info* %16, %struct.ingenic_tcu_clk_info** %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @ingenic_tcu_get_prescale(i64 %17, i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %21 = call i32 @ingenic_tcu_enable_regs(%struct.clk_hw* %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %7, align 8
  %23 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %8, align 8
  %28 = getelementptr inbounds %struct.ingenic_tcu_clk_info, %struct.ingenic_tcu_clk_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TCU_TCSR_PRESCALE_MASK, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @TCU_TCSR_PRESCALE_LSB, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %26, i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %7, align 8
  %39 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @WARN_ONCE(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %46 = call i32 @ingenic_tcu_disable_regs(%struct.clk_hw* %45)
  br label %47

47:                                               ; preds = %44, %3
  ret i32 0
}

declare dso_local %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw*) #1

declare dso_local i32 @ingenic_tcu_get_prescale(i64, i64) #1

declare dso_local i32 @ingenic_tcu_enable_regs(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @ingenic_tcu_disable_regs(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
