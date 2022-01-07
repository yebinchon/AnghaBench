; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_timer64.c_timer64_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_timer64.c_timer64_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@timer64_devstate_id = common dso_local global i64 0, align 8
@DSCR_DEVSTATE_ENABLED = common dso_local global i32 0, align 4
@timer = common dso_local global %struct.TYPE_2__* null, align 8
@TCR_ENAMODELO_MASK = common dso_local global i32 0, align 4
@TCR_CLKSRCLO = common dso_local global i32 0, align 4
@TCR_PWIDLO_MASK = common dso_local global i32 0, align 4
@TGCR_TIMMODE_MASK = common dso_local global i32 0, align 4
@TGCR_TIMLORS = common dso_local global i32 0, align 4
@TGCR_TIMMODE_UD32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @timer64_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer64_enable() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @timer64_devstate_id, align 8
  %3 = icmp sge i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i64, i64* @timer64_devstate_id, align 8
  %6 = load i32, i32* @DSCR_DEVSTATE_ENABLED, align 4
  %7 = call i32 @dscr_set_devstate(i64 %5, i32 %6)
  br label %8

8:                                                ; preds = %4, %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @soc_readl(i32* %10)
  %12 = load i32, i32* @TCR_ENAMODELO_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @soc_writel(i32 %14, i32* %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = call i32 @soc_writel(i32 0, i32* %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @soc_readl(i32* %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @TCR_CLKSRCLO, align 4
  %26 = load i32, i32* @TCR_PWIDLO_MASK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @soc_writel(i32 %29, i32* %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @soc_readl(i32* %34)
  %36 = load i32, i32* @TGCR_TIMMODE_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @soc_writel(i32 %39, i32* %41)
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @TGCR_TIMLORS, align 4
  %45 = load i32, i32* @TGCR_TIMMODE_UD32, align 4
  %46 = or i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @soc_writel(i32 %47, i32* %49)
  ret void
}

declare dso_local i32 @dscr_set_devstate(i64, i32) #1

declare dso_local i32 @soc_writel(i32, i32*) #1

declare dso_local i32 @soc_readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
