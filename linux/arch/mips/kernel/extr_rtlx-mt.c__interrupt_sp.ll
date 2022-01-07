; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_rtlx-mt.c__interrupt_sp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_rtlx-mt.c__interrupt_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_SW0 = common dso_local global i32 0, align 4
@EVPE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_interrupt_sp() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @local_irq_save(i64 %2)
  %4 = call i32 (...) @dvpe()
  %5 = call i32 @settc(i32 1)
  %6 = call i32 (...) @read_vpe_c0_cause()
  %7 = load i32, i32* @C_SW0, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @write_vpe_c0_cause(i32 %8)
  %10 = load i32, i32* @EVPE_ENABLE, align 4
  %11 = call i32 @evpe(i32 %10)
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @local_irq_restore(i64 %12)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @dvpe(...) #1

declare dso_local i32 @settc(i32) #1

declare dso_local i32 @write_vpe_c0_cause(i32) #1

declare dso_local i32 @read_vpe_c0_cause(...) #1

declare dso_local i32 @evpe(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
