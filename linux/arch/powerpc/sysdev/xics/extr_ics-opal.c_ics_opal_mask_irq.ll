; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_ics-opal.c_ics_opal_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_ics-opal.c_ics_opal_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ics-hal: mask virq %d [hw 0x%x]\0A\00", align 1
@XICS_IPI = common dso_local global i32 0, align 4
@XICS_IRQ_SPURIOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ics_opal_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ics_opal_mask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call i64 @irqd_to_hwirq(%struct.irq_data* %4)
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @pr_devel(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @XICS_IPI, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @XICS_IRQ_SPURIOUS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %1
  br label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ics_opal_mask_real_irq(i32 %21)
  br label %23

23:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @pr_devel(i8*, i32, i32) #1

declare dso_local i32 @ics_opal_mask_real_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
