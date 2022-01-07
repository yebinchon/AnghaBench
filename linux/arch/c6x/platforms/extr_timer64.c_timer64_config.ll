; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_timer64.c_timer64_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_timer64.c_timer64_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@timer = common dso_local global %struct.TYPE_2__* null, align 8
@TCR_ENAMODELO_MASK = common dso_local global i64 0, align 8
@timer64_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @timer64_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer64_config(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i64 @soc_readl(i32* %5)
  %7 = load i64, i64* @TCR_ENAMODELO_MASK, align 8
  %8 = xor i64 %7, -1
  %9 = and i64 %6, %8
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @soc_writel(i64 %10, i32* %12)
  %14 = load i64, i64* %2, align 8
  %15 = sub i64 %14, 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i32 @soc_writel(i64 %15, i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @soc_writel(i64 0, i32* %20)
  %22 = load i64, i64* @timer64_mode, align 8
  %23 = load i64, i64* %3, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @soc_writel(i64 %25, i32* %27)
  ret void
}

declare dso_local i64 @soc_readl(i32*) #1

declare dso_local i32 @soc_writel(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
