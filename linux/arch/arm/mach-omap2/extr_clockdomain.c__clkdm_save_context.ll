; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clockdomain*)* }
%struct.clockdomain = type { i32 }

@arch_clkdm = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*, i8*)* @_clkdm_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_clkdm_save_context(%struct.clockdomain* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clockdomain*, align 8
  %5 = alloca i8*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arch_clkdm, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arch_clkdm, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %10, align 8
  %12 = icmp ne i32 (%struct.clockdomain*)* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arch_clkdm, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %18, align 8
  %20 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %21 = call i32 %19(%struct.clockdomain* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
