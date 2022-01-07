; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_tcu_clk = type { i32, %struct.TYPE_2__*, %struct.ingenic_tcu_clk_info* }
%struct.TYPE_2__ = type { i32 }
%struct.ingenic_tcu_clk_info = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unable to read TCSR %d\00", align 1
@TCU_TCSR_PRESCALE_MASK = common dso_local global i32 0, align 4
@TCU_TCSR_PRESCALE_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ingenic_tcu_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ingenic_tcu_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ingenic_tcu_clk*, align 8
  %6 = alloca %struct.ingenic_tcu_clk_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw* %9)
  store %struct.ingenic_tcu_clk* %10, %struct.ingenic_tcu_clk** %5, align 8
  %11 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %5, align 8
  %12 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %11, i32 0, i32 2
  %13 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %12, align 8
  store %struct.ingenic_tcu_clk_info* %13, %struct.ingenic_tcu_clk_info** %6, align 8
  %14 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %5, align 8
  %15 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %6, align 8
  %20 = getelementptr inbounds %struct.ingenic_tcu_clk_info, %struct.ingenic_tcu_clk_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regmap_read(i32 %18, i32 %21, i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %5, align 8
  %27 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @WARN_ONCE(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TCU_TCSR_PRESCALE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @TCU_TCSR_PRESCALE_LSB, align 4
  %34 = lshr i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul i32 %36, 2
  %38 = zext i32 %37 to i64
  %39 = lshr i64 %35, %38
  ret i64 %39
}

declare dso_local %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
