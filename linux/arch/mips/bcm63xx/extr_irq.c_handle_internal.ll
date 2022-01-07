; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_irq.c_handle_internal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_irq.c_handle_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_ext_irq_cascaded = common dso_local global i64 0, align 8
@ext_irq_start = common dso_local global i32 0, align 4
@ext_irq_end = common dso_local global i32 0, align 4
@IRQ_EXTERNAL_BASE = common dso_local global i32 0, align 4
@IRQ_INTERNAL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_internal(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @is_ext_irq_cascaded, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @ext_irq_start, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @ext_irq_end, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @ext_irq_start, align 4
  %16 = sub nsw i32 %14, %15
  %17 = load i32, i32* @IRQ_EXTERNAL_BASE, align 4
  %18 = add nsw i32 %16, %17
  %19 = call i32 @do_IRQ(i32 %18)
  br label %25

20:                                               ; preds = %9, %5, %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @IRQ_INTERNAL_BASE, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @do_IRQ(i32 %23)
  br label %25

25:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
