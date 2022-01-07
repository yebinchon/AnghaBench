; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ralink/extr_irq.c_ralink_intc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ralink/extr_irq.c_ralink_intc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_domain = type { i32 }

@INTC_REG_STATUS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ralink_intc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ralink_intc_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.irq_domain*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %5 = load i32, i32* @INTC_REG_STATUS0, align 4
  %6 = call i64 @rt_intc_r32(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc* %10)
  store %struct.irq_domain* %11, %struct.irq_domain** %4, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @__ffs(i64 %13)
  %15 = call i32 @irq_find_mapping(%struct.irq_domain* %12, i32 %14)
  %16 = call i32 @generic_handle_irq(i32 %15)
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @spurious_interrupt()
  br label %19

19:                                               ; preds = %17, %9
  ret void
}

declare dso_local i64 @rt_intc_r32(i32) #1

declare dso_local %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @spurious_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
