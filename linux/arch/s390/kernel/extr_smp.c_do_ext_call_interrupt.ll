; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_do_ext_call_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_do_ext_call_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_code = type { i32 }

@IRQEXT_EXC = common dso_local global i32 0, align 4
@IRQEXT_EMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @do_ext_call_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ext_call_interrupt(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ext_code, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.ext_code, %struct.ext_code* %4, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds %struct.ext_code, %struct.ext_code* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 4610
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @IRQEXT_EXC, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @IRQEXT_EMS, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = call i32 @inc_irq_stat(i32 %16)
  %18 = call i32 (...) @smp_handle_ext_call()
  ret void
}

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @smp_handle_ext_call(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
