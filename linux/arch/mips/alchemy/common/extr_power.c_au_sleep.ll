; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_power.c_au_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_power.c_au_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au_sleep() #0 {
  %1 = call i32 (...) @save_core_regs()
  %2 = call i32 (...) @alchemy_get_cputype()
  switch i32 %2, label %9 [
    i32 133, label %3
    i32 129, label %3
    i32 132, label %3
    i32 128, label %5
    i32 131, label %5
    i32 130, label %7
  ]

3:                                                ; preds = %0, %0, %0
  %4 = call i32 (...) @alchemy_sleep_au1000()
  br label %9

5:                                                ; preds = %0, %0
  %6 = call i32 (...) @alchemy_sleep_au1550()
  br label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @alchemy_sleep_au1300()
  br label %9

9:                                                ; preds = %0, %7, %5, %3
  %10 = call i32 (...) @restore_core_regs()
  ret void
}

declare dso_local i32 @save_core_regs(...) #1

declare dso_local i32 @alchemy_get_cputype(...) #1

declare dso_local i32 @alchemy_sleep_au1000(...) #1

declare dso_local i32 @alchemy_sleep_au1550(...) #1

declare dso_local i32 @alchemy_sleep_au1300(...) #1

declare dso_local i32 @restore_core_regs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
