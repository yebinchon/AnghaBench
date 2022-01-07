; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-generated.c_clk_generated_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-generated.c_clk_generated_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_generated = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AT91_PMC_PCR_GCKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_generated_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_generated_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_generated*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_generated* @to_clk_generated(%struct.clk_hw* %6)
  store %struct.clk_generated* %7, %struct.clk_generated** %3, align 8
  %8 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %9 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %14 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %17 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %22 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %25 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %23, %28
  %30 = call i32 @regmap_write(i32 %15, i32 %20, i32 %29)
  %31 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %32 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %35 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_read(i32 %33, i32 %38, i32* %5)
  %40 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %41 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32 %42, i64 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @AT91_PMC_PCR_GCKEN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  ret i32 %50
}

declare dso_local %struct.clk_generated* @to_clk_generated(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
