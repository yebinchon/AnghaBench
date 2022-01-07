; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_irq.c_cpu_claim_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_irq.c_cpu_claim_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@cpu_interrupt_type = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_claim_irq(i32 %0, %struct.irq_chip* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.irq_chip* %1, %struct.irq_chip** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @irq_has_action(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %35

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @irq_get_chip(i32 %15)
  %17 = icmp ne i32* %16, @cpu_interrupt_type
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %35

21:                                               ; preds = %14
  %22 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %23 = icmp ne %struct.irq_chip* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %27 = load i32, i32* @handle_percpu_irq, align 4
  %28 = call i32 @irq_set_chip_and_handler(i32 %25, %struct.irq_chip* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @irq_set_chip_data(i32 %29, i8* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @__cpu_unmask_irq(i32 %32)
  br label %34

34:                                               ; preds = %24, %21
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %18, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @irq_has_action(i32) #1

declare dso_local i32* @irq_get_chip(i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, i8*) #1

declare dso_local i32 @__cpu_unmask_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
