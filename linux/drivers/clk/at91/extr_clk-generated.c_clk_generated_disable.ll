; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-generated.c_clk_generated_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-generated.c_clk_generated_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_generated = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AT91_PMC_PCR_GCKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_generated_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_generated_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_generated*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_generated* @to_clk_generated(%struct.clk_hw* %5)
  store %struct.clk_generated* %6, %struct.clk_generated** %3, align 8
  %7 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %8 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32 %9, i64 %10)
  %12 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %13 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %16 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %21 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %24 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %22, %27
  %29 = call i32 @regmap_write(i32 %14, i32 %19, i32 %28)
  %30 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %31 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %34 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %39 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AT91_PMC_PCR_GCKEN, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %46 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regmap_update_bits(i32 %32, i32 %37, i32 %44, i32 %49)
  %51 = load %struct.clk_generated*, %struct.clk_generated** %3, align 8
  %52 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32 %53, i64 %54)
  ret void
}

declare dso_local %struct.clk_generated* @to_clk_generated(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
