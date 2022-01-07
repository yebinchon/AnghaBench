; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_irq_ia64.c_ia64_native_register_percpu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_irq_ia64.c_ia64_native_register_percpu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32 }

@CPU_MASK_ALL = common dso_local global i32 0, align 4
@IRQ_PER_CPU = common dso_local global i32 0, align 4
@irq_type_ia64_lsapic = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_native_register_percpu_irq(i32 %0, %struct.irqaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @CPU_MASK_ALL, align 4
  %10 = call i32 @bind_irq_vector(i32 %7, i32 %8, i32 %9)
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IRQ_PER_CPU, align 4
  %14 = call i32 @irq_set_status_flags(i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @irq_set_chip(i32 %15, i32* @irq_type_ia64_lsapic)
  %17 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %18 = icmp ne %struct.irqaction* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %22 = call i32 @setup_irq(i32 %20, %struct.irqaction* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @handle_percpu_irq, align 4
  %26 = call i32 @irq_set_handler(i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bind_irq_vector(i32, i32, i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irq_set_chip(i32, i32*) #1

declare dso_local i32 @setup_irq(i32, %struct.irqaction*) #1

declare dso_local i32 @irq_set_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
