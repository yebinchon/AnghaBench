; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_tcu_clk = type { i32, %struct.TYPE_2__*, %struct.ingenic_tcu_clk_info* }
%struct.TYPE_2__ = type { i32 }
%struct.ingenic_tcu_clk_info = type { i32 }

@TCU_TCSR_PARENT_CLOCK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to update TCSR %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @ingenic_tcu_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_tcu_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ingenic_tcu_clk*, align 8
  %6 = alloca %struct.ingenic_tcu_clk_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw* %9)
  store %struct.ingenic_tcu_clk* %10, %struct.ingenic_tcu_clk** %5, align 8
  %11 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %5, align 8
  %12 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %11, i32 0, i32 2
  %13 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %12, align 8
  store %struct.ingenic_tcu_clk_info* %13, %struct.ingenic_tcu_clk_info** %6, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %15 = call i32 @ingenic_tcu_enable_regs(%struct.clk_hw* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %5, align 8
  %17 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %6, align 8
  %22 = getelementptr inbounds %struct.ingenic_tcu_clk_info, %struct.ingenic_tcu_clk_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TCU_TCSR_PARENT_CLOCK_MASK, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = call i32 @regmap_update_bits(i32 %20, i32 %23, i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %5, align 8
  %32 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @WARN_ONCE(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %39 = call i32 @ingenic_tcu_disable_regs(%struct.clk_hw* %38)
  br label %40

40:                                               ; preds = %37, %2
  ret i32 0
}

declare dso_local %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw*) #1

declare dso_local i32 @ingenic_tcu_enable_regs(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @ingenic_tcu_disable_regs(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
