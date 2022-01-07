; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_lpd270.c_lpd270_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_lpd270.c_lpd270_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@LPD270_INT_STATUS = common dso_local global i32 0, align 4
@lpd270_irq_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @lpd270_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpd270_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %5 = load i32, i32* @LPD270_INT_STATUS, align 4
  %6 = call i64 @__raw_readw(i32 %5)
  %7 = load i64, i64* @lpd270_irq_enabled, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %34, %1
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %14, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 0
  %18 = call i32 %15(%struct.TYPE_4__* %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @likely(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %9
  %23 = call i32 @LPD270_IRQ(i32 0)
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @__ffs(i64 %24)
  %26 = add i32 %23, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @generic_handle_irq(i32 %27)
  %29 = load i32, i32* @LPD270_INT_STATUS, align 4
  %30 = call i64 @__raw_readw(i32 %29)
  %31 = load i64, i64* @lpd270_irq_enabled, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %22, %9
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %9, label %37

37:                                               ; preds = %34
  ret void
}

declare dso_local i64 @__raw_readw(i32) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @LPD270_IRQ(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
