; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/txx9/generic/extr_irq_tx4939.c_tx4939_irq_mask_ack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/txx9/generic/extr_irq_tx4939.c_tx4939_irq_mask_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.irq_data = type { i32 }

@TXX9_IRQ_BASE = common dso_local global i32 0, align 4
@tx4939irq = common dso_local global %struct.TYPE_5__* null, align 8
@TXx9_IRSCR_EIClrE = common dso_local global i32 0, align 4
@tx4939_ircptr = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @tx4939_irq_mask_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx4939_irq_mask_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TXX9_IRQ_BASE, align 4
  %8 = sub i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call i32 @tx4939_irq_mask(%struct.irq_data* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tx4939irq, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @TXx9_IRCR_EDGE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @TXx9_IRSCR_EIClrE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 15
  %25 = or i32 %22, %24
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 16
  %28 = shl i32 %25, %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tx4939_ircptr, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @__raw_writel(i32 %28, i32* %31)
  br label %33

33:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @tx4939_irq_mask(%struct.irq_data*) #1

declare dso_local i64 @TXx9_IRCR_EDGE(i32) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
