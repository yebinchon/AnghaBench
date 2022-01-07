; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_locomo.c_locomo_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_locomo.c_locomo_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locomo = type { i32, i32 }

@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@locomo_handler = common dso_local global i32 0, align 4
@locomo_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.locomo*)* @locomo_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locomo_setup_irq(%struct.locomo* %0) #0 {
  %2 = alloca %struct.locomo*, align 8
  %3 = alloca i32, align 4
  store %struct.locomo* %0, %struct.locomo** %2, align 8
  %4 = load %struct.locomo*, %struct.locomo** %2, align 8
  %5 = getelementptr inbounds %struct.locomo, %struct.locomo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.locomo*, %struct.locomo** %2, align 8
  %8 = getelementptr inbounds %struct.locomo, %struct.locomo* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %11 = call i32 @irq_set_irq_type(i32 %9, i32 %10)
  %12 = load %struct.locomo*, %struct.locomo** %2, align 8
  %13 = getelementptr inbounds %struct.locomo, %struct.locomo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @locomo_handler, align 4
  %16 = load %struct.locomo*, %struct.locomo** %2, align 8
  %17 = call i32 @irq_set_chained_handler_and_data(i32 %14, i32 %15, %struct.locomo* %16)
  br label %18

18:                                               ; preds = %37, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.locomo*, %struct.locomo** %2, align 8
  %21 = getelementptr inbounds %struct.locomo, %struct.locomo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 3
  %24 = icmp sle i32 %19, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @handle_level_irq, align 4
  %28 = call i32 @irq_set_chip_and_handler(i32 %26, i32* @locomo_chip, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.locomo*, %struct.locomo** %2, align 8
  %31 = call i32 @irq_set_chip_data(i32 %29, %struct.locomo* %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @IRQ_NOREQUEST, align 4
  %34 = load i32, i32* @IRQ_NOPROBE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @irq_clear_status_flags(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %18

40:                                               ; preds = %18
  ret void
}

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.locomo*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.locomo*) #1

declare dso_local i32 @irq_clear_status_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
