; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_irq.c_stack_overflow_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_irq.c_stack_overflow_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pt_regs = type { i64*, i64* }

@IRQ_STACK_SIZE = common dso_local global i64 0, align 8
@STACK_MARGIN = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@irq_stack_union = common dso_local global i32 0, align 4
@irq_stat = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@sysctl_panic_on_stackoverflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @stack_overflow_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_overflow_check(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
