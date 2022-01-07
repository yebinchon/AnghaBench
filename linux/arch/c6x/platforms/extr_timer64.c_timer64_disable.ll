; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_timer64.c_timer64_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_timer64.c_timer64_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@timer = common dso_local global %struct.TYPE_2__* null, align 8
@TCR_ENAMODELO_MASK = common dso_local global i32 0, align 4
@timer64_devstate_id = common dso_local global i64 0, align 8
@DSCR_DEVSTATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @timer64_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer64_disable() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %3 = call i32 @soc_readl(i32* %2)
  %4 = load i32, i32* @TCR_ENAMODELO_MASK, align 4
  %5 = xor i32 %4, -1
  %6 = and i32 %3, %5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @soc_writel(i32 %6, i32* %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @soc_writel(i32 0, i32* %11)
  %13 = load i64, i64* @timer64_devstate_id, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i64, i64* @timer64_devstate_id, align 8
  %17 = load i32, i32* @DSCR_DEVSTATE_DISABLED, align 4
  %18 = call i32 @dscr_set_devstate(i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %0
  ret void
}

declare dso_local i32 @soc_writel(i32, i32*) #1

declare dso_local i32 @soc_readl(i32*) #1

declare dso_local i32 @dscr_set_devstate(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
