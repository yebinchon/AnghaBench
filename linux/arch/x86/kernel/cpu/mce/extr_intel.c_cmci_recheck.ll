; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_cmci_recheck.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_cmci_recheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_info = common dso_local global i32 0, align 4
@mce_banks_owned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmci_recheck() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @raw_cpu_ptr(i32* @cpu_info)
  %4 = call i32 @mce_available(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @cmci_supported(i32* %2)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %0
  br label %17

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = call i32 @this_cpu_ptr(i32* @mce_banks_owned)
  %14 = call i32 @machine_check_poll(i32 0, i32 %13)
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @local_irq_restore(i64 %15)
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mce_available(i32) #1

declare dso_local i32 @raw_cpu_ptr(i32*) #1

declare dso_local i32 @cmci_supported(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @machine_check_poll(i32, i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
