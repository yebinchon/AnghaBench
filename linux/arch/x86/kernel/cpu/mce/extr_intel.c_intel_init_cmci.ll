; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_intel_init_cmci.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_intel_init_cmci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intel_threshold_interrupt = common dso_local global i32 0, align 4
@mce_threshold_vector = common dso_local global i32 0, align 4
@APIC_LVTCMCI = common dso_local global i32 0, align 4
@THRESHOLD_APIC_VECTOR = common dso_local global i32 0, align 4
@APIC_DM_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_init_cmci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_init_cmci() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @cmci_supported(i32* %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %15

5:                                                ; preds = %0
  %6 = load i32, i32* @intel_threshold_interrupt, align 4
  store i32 %6, i32* @mce_threshold_vector, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @cmci_discover(i32 %7)
  %9 = load i32, i32* @APIC_LVTCMCI, align 4
  %10 = load i32, i32* @THRESHOLD_APIC_VECTOR, align 4
  %11 = load i32, i32* @APIC_DM_FIXED, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @apic_write(i32 %9, i32 %12)
  %14 = call i32 (...) @cmci_recheck()
  br label %15

15:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @cmci_supported(i32*) #1

declare dso_local i32 @cmci_discover(i32) #1

declare dso_local i32 @apic_write(i32, i32) #1

declare dso_local i32 @cmci_recheck(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
