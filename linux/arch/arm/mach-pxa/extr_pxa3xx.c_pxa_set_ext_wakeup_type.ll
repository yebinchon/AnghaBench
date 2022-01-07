; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa3xx.c_pxa_set_ext_wakeup_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pxa3xx.c_pxa_set_ext_wakeup_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_WAKEUP0 = common dso_local global i32 0, align 4
@PWER = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @pxa_set_ext_wakeup_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_set_ext_wakeup_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IRQ_WAKEUP0, align 4
  %14 = sub nsw i32 %12, %13
  %15 = shl i32 1, %14
  %16 = load i32, i32* @PWER, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* @PWER, align 4
  br label %18

18:                                               ; preds = %9, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %25 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IRQ_WAKEUP0, align 4
  %28 = sub nsw i32 %26, %27
  %29 = add nsw i32 %28, 2
  %30 = shl i32 1, %29
  %31 = load i32, i32* @PWER, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @PWER, align 4
  br label %33

33:                                               ; preds = %23, %18
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
