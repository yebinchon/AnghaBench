; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_tcu.c_ingenic_tcu_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_tcu_clk = type { i32, %struct.TYPE_2__*, %struct.ingenic_tcu_clk_info* }
%struct.TYPE_2__ = type { i32 }
%struct.ingenic_tcu_clk_info = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unable to read TCSR %d\00", align 1
@TCU_TCSR_PARENT_CLOCK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*)* @ingenic_tcu_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ingenic_tcu_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.ingenic_tcu_clk*, align 8
  %4 = alloca %struct.ingenic_tcu_clk_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw* %7)
  store %struct.ingenic_tcu_clk* %8, %struct.ingenic_tcu_clk** %3, align 8
  %9 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %3, align 8
  %10 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %9, i32 0, i32 2
  %11 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %10, align 8
  store %struct.ingenic_tcu_clk_info* %11, %struct.ingenic_tcu_clk_info** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %3, align 8
  %13 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ingenic_tcu_clk_info*, %struct.ingenic_tcu_clk_info** %4, align 8
  %18 = getelementptr inbounds %struct.ingenic_tcu_clk_info, %struct.ingenic_tcu_clk_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %16, i32 %19, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.ingenic_tcu_clk*, %struct.ingenic_tcu_clk** %3, align 8
  %25 = getelementptr inbounds %struct.ingenic_tcu_clk, %struct.ingenic_tcu_clk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @WARN_ONCE(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TCU_TCSR_PARENT_CLOCK_MASK, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @ffs(i32 %30)
  %32 = sub nsw i64 %31, 1
  ret i64 %32
}

declare dso_local %struct.ingenic_tcu_clk* @to_tcu_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i64 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
