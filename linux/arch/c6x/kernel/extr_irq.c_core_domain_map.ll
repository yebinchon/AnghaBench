; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_irq.c_core_domain_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_irq.c_core_domain_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }

@NR_PRIORITY_IRQS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@prio_to_virq = common dso_local global i32* null, align 8
@IRQ_LEVEL = common dso_local global i32 0, align 4
@core_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @core_domain_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_domain_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @NR_PRIORITY_IRQS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** @prio_to_virq, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @IRQ_LEVEL, align 4
  %25 = call i32 @irq_set_status_flags(i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @handle_level_irq, align 4
  %28 = call i32 @irq_set_chip_and_handler(i32 %26, i32* @core_chip, i32 %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
