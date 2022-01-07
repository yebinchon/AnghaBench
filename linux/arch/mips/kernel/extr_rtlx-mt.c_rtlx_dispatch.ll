; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_rtlx-mt.c_rtlx_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_rtlx-mt.c_rtlx_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_SW0 = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_BASE = common dso_local global i64 0, align 8
@MIPS_CPU_RTLX_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rtlx_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtlx_dispatch() #0 {
  %1 = call i32 (...) @read_c0_cause()
  %2 = call i32 (...) @read_c0_status()
  %3 = and i32 %1, %2
  %4 = load i32, i32* @C_SW0, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i64, i64* @MIPS_CPU_IRQ_BASE, align 8
  %9 = load i64, i64* @MIPS_CPU_RTLX_IRQ, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @do_IRQ(i64 %10)
  br label %12

12:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @do_IRQ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
