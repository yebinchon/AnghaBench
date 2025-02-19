; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_tcu_clk = type { %struct.ingenic_tcu*, %struct.ingenic_tcu_clk_info* }
%struct.ingenic_tcu = type { i32 }
%struct.ingenic_tcu_clk_info = type { i32 }

@TCU_REG_TSSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @ingenic_tcu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_tcu_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.ingenic_tcu_clk*, align 8
  %4 = alloca %struct.ingenic_tcu_clk_info*, align 8
  %5 = alloca %struct.ingenic_tcu*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw* %6)
  store %struct.ingenic_tcu_clk* %7, %struct.ingenic_tcu_clk** %3, align 8
  %8 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %3, align 8
  %9 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %8, i32 0, i32 1
  %10 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %9, align 8
  store %struct.ingenic_tcu_clk_info* %10, %struct.ingenic_tcu_clk_info** %4, align 8
  %11 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %3, align 8
  %12 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %11, i32 0, i32 0
  %13 = load %struct.ingenic_tcu*, %struct.ingenic_tcu** %12, align 8
  store %struct.ingenic_tcu* %13, %struct.ingenic_tcu** %5, align 8
  %14 = load %struct.ingenic_tcu*, %struct.ingenic_tcu** %5, align 8
  %15 = getelementptr inbounds %struct.ingenic_tcu, %struct.ingenic_tcu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TCU_REG_TSSR, align 4
  %18 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %4, align 8
  %19 = getelementptr inbounds %struct.ingenic_tcu_clk_info, %struct.ingenic_tcu_clk_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = call i32 @regmap_write(i32 %16, i32 %17, i32 %21)
  ret void
}

declare dso_local %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
