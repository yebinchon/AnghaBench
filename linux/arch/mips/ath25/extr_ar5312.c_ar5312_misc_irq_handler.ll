; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ath25/extr_ar5312.c_ar5312_misc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ath25/extr_ar5312.c_ar5312_misc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_domain = type { i32 }

@AR5312_ISR = common dso_local global i32 0, align 4
@AR5312_IMR = common dso_local global i32 0, align 4
@AR5312_MISC_IRQ_TIMER = common dso_local global i32 0, align 4
@AR5312_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ar5312_misc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5312_misc_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load i32, i32* @AR5312_ISR, align 4
  %8 = call i32 @ar5312_rst_reg_read(i32 %7)
  %9 = load i32, i32* @AR5312_IMR, align 4
  %10 = call i32 @ar5312_rst_reg_read(i32 %9)
  %11 = and i32 %8, %10
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = call %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc* %15)
  store %struct.irq_domain* %16, %struct.irq_domain** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @__ffs(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @irq_find_mapping(%struct.irq_domain* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %14, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @generic_handle_irq(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @AR5312_MISC_IRQ_TIMER, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @AR5312_TIMER, align 4
  %33 = call i32 @ar5312_rst_reg_read(i32 %32)
  br label %34

34:                                               ; preds = %31, %25
  br label %37

35:                                               ; preds = %22
  %36 = call i32 (...) @spurious_interrupt()
  br label %37

37:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @ar5312_rst_reg_read(i32) #1

declare dso_local %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @spurious_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
