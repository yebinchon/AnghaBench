; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-generated.c_clk_generated_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-generated.c_clk_generated_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_generated = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AT91_PMC_PCR_GCKDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_generated*)* @clk_generated_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_generated_startup(%struct.clk_generated* %0) #0 {
  %2 = alloca %struct.clk_generated*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.clk_generated* %0, %struct.clk_generated** %2, align 8
  %5 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %6 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32 %7, i64 %8)
  %10 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %11 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %14 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %19 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %22 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %20, %25
  %27 = call i32 @regmap_write(i32 %12, i32 %17, i32 %26)
  %28 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %29 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %32 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regmap_read(i32 %30, i32 %35, i32* %3)
  %37 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %38 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32 %39, i64 %40)
  %42 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %43 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @field_get(i32 %46, i32 %47)
  %49 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %50 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @AT91_PMC_PCR_GCKDIV_MASK, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @FIELD_GET(i32 %51, i32 %52)
  %54 = load %struct.clk_generated*, %struct.clk_generated** %2, align 8
  %55 = getelementptr inbounds %struct.clk_generated, %struct.clk_generated* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @field_get(i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
